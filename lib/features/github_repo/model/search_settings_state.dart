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

enum SearchSettingsSort {
  stars('stars'),
  forks('forks'),
  helpWantedIssues('help-wanted-issues'),
  updated('updated');

  final String queryParamValue;
  const SearchSettingsSort(this.queryParamValue);
}

enum SearchSettingsOrder {
  desc('desc'),
  asc('asc');

  final String queryParamValue;
  const SearchSettingsOrder(this.queryParamValue);
}
