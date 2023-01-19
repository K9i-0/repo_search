import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_search/features/github_repo/data/search_settings_repository.dart';
import 'package:repo_search/features/github_repo/model/search_settings_state.dart';

final searchSettingsProvider =
    NotifierProvider<SearchSettingNotifier, SearchSettingsState>(
  () => SearchSettingNotifier(),
);

/// 検索設定を管理するNotifier
class SearchSettingNotifier extends Notifier<SearchSettingsState> {
  @override
  SearchSettingsState build() {
    return SearchSettingsState(
      sort: ref.watch(searchSettingsRepositoryProvider).sort,
      order: ref.watch(searchSettingsRepositoryProvider).order,
    );
  }

  Future<void> setSort(SearchSettingsSort sort) async {
    await ref.read(searchSettingsRepositoryProvider).setSort(sort);
    state = state.copyWith(sort: sort);
  }

  Future<void> setOrder(SearchSettingsOrder order) async {
    await ref.read(searchSettingsRepositoryProvider).setOrder(order);
    state = state.copyWith(order: order);
  }
}
