import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

extension CancelTokenX on Ref {
  CancelToken cancelToken() {
    final cancelToken = CancelToken();
    onDispose(cancelToken.cancel);
    return cancelToken;
  }
}
