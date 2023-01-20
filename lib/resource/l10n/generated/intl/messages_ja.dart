// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ja locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ja';

  static String m0(statusCode) => "ステータスコードが不正です: ${statusCode}";

  static String m1(updatedAt) => "${updatedAt}に更新";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appTitle": MessageLookupByLibrary.simpleMessage("りぽさーち"),
        "dioErrorTypeCancel":
            MessageLookupByLibrary.simpleMessage("リクエストがキャンセルされました"),
        "dioErrorTypeConnectTimeout":
            MessageLookupByLibrary.simpleMessage("接続がタイムアウトしました"),
        "dioErrorTypeReceiveTimeout":
            MessageLookupByLibrary.simpleMessage("レスポンスがタイムアウトしました"),
        "dioErrorTypeResponse": m0,
        "dioErrorTypeSendTimeout":
            MessageLookupByLibrary.simpleMessage("リクエストがタイムアウトしました"),
        "dioErrorTypeUnknown":
            MessageLookupByLibrary.simpleMessage("不明なエラーが発生しました"),
        "githubRepoDescription": MessageLookupByLibrary.simpleMessage("説明"),
        "githubRepoDescriptionEmpty":
            MessageLookupByLibrary.simpleMessage("説明がありません"),
        "githubRepoFork": MessageLookupByLibrary.simpleMessage("Fork数"),
        "githubRepoFullName": MessageLookupByLibrary.simpleMessage("リポジトリ名"),
        "githubRepoLanguage": MessageLookupByLibrary.simpleMessage("言語"),
        "githubRepoLanguageEmpty": MessageLookupByLibrary.simpleMessage("不明"),
        "githubRepoLicense": MessageLookupByLibrary.simpleMessage("ライセンス"),
        "githubRepoLicenseEmpty": MessageLookupByLibrary.simpleMessage("不明"),
        "githubRepoOpenIssues":
            MessageLookupByLibrary.simpleMessage("Open Issues数"),
        "githubRepoStar": MessageLookupByLibrary.simpleMessage("Star数"),
        "githubRepoTopics": MessageLookupByLibrary.simpleMessage("トピック"),
        "githubRepoUpdatedAt": MessageLookupByLibrary.simpleMessage("更新日時"),
        "githubRepoWatch": MessageLookupByLibrary.simpleMessage("Watch数"),
        "repoUpdatedAt": m1,
        "searchBarHint": MessageLookupByLibrary.simpleMessage("キーワードで検索"),
        "searchKeywordsEmpty":
            MessageLookupByLibrary.simpleMessage("検索キーワードを入力してください"),
        "searchResultEmpty": MessageLookupByLibrary.simpleMessage(
            "結果が見つかりませんでした。検索ワードを変えてみてください。"),
        "searchSettingsOrder": MessageLookupByLibrary.simpleMessage("並び順"),
        "searchSettingsOrderAsc": MessageLookupByLibrary.simpleMessage("昇順"),
        "searchSettingsOrderDesc": MessageLookupByLibrary.simpleMessage("降順"),
        "searchSettingsSort": MessageLookupByLibrary.simpleMessage("並び替え"),
        "searchSettingsSortBestMatch":
            MessageLookupByLibrary.simpleMessage("ベストマッチ"),
        "searchSettingsSortForks":
            MessageLookupByLibrary.simpleMessage("Fork数"),
        "searchSettingsSortHelpWantedIssues":
            MessageLookupByLibrary.simpleMessage("助けが必要なIssue数"),
        "searchSettingsSortStars":
            MessageLookupByLibrary.simpleMessage("Star数"),
        "searchSettingsSortUpdated":
            MessageLookupByLibrary.simpleMessage("更新日時"),
        "searchSettingsTitle": MessageLookupByLibrary.simpleMessage("検索設定"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("テーマ"),
        "settingsThemeDark": MessageLookupByLibrary.simpleMessage("ダーク"),
        "settingsThemeLight": MessageLookupByLibrary.simpleMessage("ライト"),
        "settingsThemeSystem": MessageLookupByLibrary.simpleMessage("端末の設定を使う"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("設定")
      };
}
