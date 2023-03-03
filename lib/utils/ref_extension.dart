import 'dart:async';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// https://zenn.dev/riscait/books/flutter-riverpod-practical-introduction/viewer/tips
extension RefX on Ref {
  /// 保留中のネットワークリクエストが不要になった場合にキャンセルするための
  /// [CancelToken]を package:dio から生成する
  ///
  /// ```dart
  /// @riverpod
  /// Future<String> fetchSomething(FetchSomethingRef ref) async {
  ///   final client = ref.watch(apiClientProvider);
  ///   final response = await client.fetchSomething(
  ///     cancelToken: ref.cancelToken(),
  ///   );
  ///   return response.data;
  /// }
  /// ```
  CancelToken cancelToken() {
    final cancelToken = CancelToken();
    onDispose(cancelToken.cancel);
    return cancelToken;
  }

  /// 依存関係が急速に複数回変化した場合に大量のネットワークリクエストが送信されるのを防ぐために、
  /// ネットワークリクエストを [duration] で指定した分だけ遅らせる
  /// 瞬間的に依存関係が変化しても1度しかネットワークリクエストが送信されないようになる
  ///
  /// ```dart
  /// @riverpod
  /// Future<String> fetchSomething(
  ///   FetchSomethingRef ref, {
  ///   required String param,
  /// }) async {
  ///   final client = ref.watch(apiClientProvider);
  ///
  ///   await ref.debounce();
  ///
  ///   final response = await client.fetchSomething(
  ///     param: param,
  ///     cancelToken: ref.cancelToken(),
  ///   );
  ///   return response.data;
  /// }
  /// ```
  Future<void> debounce([
    Duration duration = const Duration(milliseconds: 250),
  ]) async {
    final completer = Completer<void>();
    final timer = Timer(duration, () {
      if (!completer.isCompleted) {
        completer.complete();
      }
    });

    onDispose(() {
      timer.cancel();
      if (!completer.isCompleted) {
        completer.completeError(StateError('cancelled'));
      }
    });

    return completer.future;
  }
}
