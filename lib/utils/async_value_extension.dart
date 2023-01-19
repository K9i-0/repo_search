import 'package:hooks_riverpod/hooks_riverpod.dart';

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
}
