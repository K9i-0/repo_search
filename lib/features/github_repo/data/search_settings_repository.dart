import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_search/common/shared_preferences.dart';
import 'package:repo_search/features/github_repo/model/search_settings_state.dart';

final searchSettingsRepositoryProvider = Provider<SearchSettingsRepository>(
  (ref) => SearchSettingsRepository(ref),
);

class SearchSettingsRepository {
  final Ref _ref;
  const SearchSettingsRepository(this._ref);

  SearchSettingsSort get sort {
    final sortIndex = _ref
        .read(sharedPreferencesProvider)
        .getInt(SharedPreferencesKeys.searchSettingsSort.name);

    if (sortIndex == null) {
      return SearchSettingsSort.stars;
    }
    return SearchSettingsSort.values[sortIndex];
  }

  Future<void> setSort(SearchSettingsSort sort) async {
    await _ref
        .read(sharedPreferencesProvider)
        .setInt(SharedPreferencesKeys.searchSettingsSort.name, sort.index);
  }

  SearchSettingsOrder get order {
    final orderIndex = _ref
        .read(sharedPreferencesProvider)
        .getInt(SharedPreferencesKeys.searchSettingsOrder.name);

    if (orderIndex == null) {
      return SearchSettingsOrder.desc;
    }
    return SearchSettingsOrder.values[orderIndex];
  }

  Future<void> setOrder(SearchSettingsOrder order) async {
    await _ref
        .read(sharedPreferencesProvider)
        .setInt(SharedPreferencesKeys.searchSettingsOrder.name, order.index);
  }
}
