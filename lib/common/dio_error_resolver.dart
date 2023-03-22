import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:repo_search/utils/build_context_extension.dart';

/// DioErrorを解決する
String resolveDioError(Object error, BuildContext context) {
  final l10n = context.l10n;
  if (error is DioError) {
    switch (error.type) {
      case DioErrorType.cancel:
        return l10n.dioErrorTypeCancel;
      case DioErrorType.connectionTimeout:
        return l10n.dioErrorTypeConnectTimeout;
      case DioErrorType.unknown:
        return l10n.dioErrorTypeUnknown;
      case DioErrorType.receiveTimeout:
        return l10n.dioErrorTypeReceiveTimeout;
      case DioErrorType.badResponse:
        return l10n
            .dioErrorTypeResponse(error.response?.statusCode.toString() ?? '-');
      case DioErrorType.sendTimeout:
        return l10n.dioErrorTypeSendTimeout;
      case DioErrorType.badCertificate:
        return 'Bad certificate';
      case DioErrorType.connectionError:
        return 'Connection error';
    }
  }

  return l10n.dioErrorTypeUnknown;
}
