import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_search/common/dio_error_resolver.dart';

extension AsyncValueX<T> on AsyncValue<T> {
  /// guard関数の拡張版
  /// 例外時に前回のデータを持たせてエラーを返す
  Future<AsyncValue<T>> guardPlus(Future<T> Function() future) async {
    try {
      return AsyncValue.data(await future());
    } catch (err, stack) {
      // 前回のデータを持たせてエラーを返す
      return AsyncValue<T>.error(err, stack).copyWithPrevious(this);
    }
  }

  /// when関数の拡張版
  ///
  /// [skipErrorOnHasValue]がtrueの時はデータがある場合のエラーをスキップする
  /// ページングの2ページ目以降でエラー時に、取得ずみデータを表示する場合などに使用する
  R whenPlus<R>({
    bool skipLoadingOnReload = false,
    bool skipLoadingOnRefresh = true,
    bool skipError = false,
    bool skipErrorOnHasValue = true,
    required R Function(T data, bool hasError) data,
    required R Function(Object error, StackTrace stackTrace) error,
    required R Function() loading,
  }) {
    if (skipErrorOnHasValue) {
      if (hasValue && hasError) {
        return data(requireValue, true);
      }
    }

    return when(
      skipLoadingOnReload: skipLoadingOnReload,
      skipLoadingOnRefresh: skipLoadingOnRefresh,
      skipError: skipError,
      data: (d) => data(d, hasError),
      error: error,
      loading: loading,
    );
  }

  /// エラー時にSnackBarを表示する便利メソッド
  ///
  /// [skipHasNotValue]がtrueの時はデータがない場合は表示しない
  /// ページングの1ページ目でエラー時には表示しない場合などに使用する
  void showSnackbarOnError(
    BuildContext context, {
    bool skipHasNotValue = false,
  }) {
    if (skipHasNotValue && !hasValue) {
      return;
    }

    if (!isRefreshing && hasError) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            resolveDioError(error!, context),
          ),
        ),
      );
    }
  }
}
