import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// CancelTokenの生成を簡略化するための拡張メソッド
extension CancelTokenX on Ref {
  CancelToken cancelToken() {
    final cancelToken = CancelToken();
    onDispose(cancelToken.cancel);
    return cancelToken;
  }
}
