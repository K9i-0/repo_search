// ignore: unused_import, directives_ordering
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_settings_state.freezed.dart';

@freezed
class SearchSettingsState with _$SearchSettingsState {
  const factory SearchSettingsState({
    required SearchSettingsSort sort,
    required SearchSettingsOrder order,
  }) = _SearchSettingsState;
}

/// 以下のAPIのsortパラメーター
/// https://docs.github.com/ja/rest/search?apiVersion=2022-11-28#search-repositories
///
/// indexがSharedPreferenceに保存されているので要素を追加する場合は注意
enum SearchSettingsSort {
  bestMatch(null),
  stars('stars'),
  forks('forks'),
  helpWantedIssues('help-wanted-issues'),
  updated('updated');

  final String? queryParamValue;
  const SearchSettingsSort(this.queryParamValue);
}

/// 以下のAPIのorderパラメーター
/// https://docs.github.com/ja/rest/search?apiVersion=2022-11-28#search-repositories
///
/// indexがSharedPreferenceに保存されているので要素を追加する場合は注意
enum SearchSettingsOrder {
  desc('desc'),
  asc('asc');

  final String queryParamValue;
  const SearchSettingsOrder(this.queryParamValue);
}
