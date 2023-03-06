import 'package:repo_search/features/github_repo/data/search_settings_repository.dart';
import 'package:repo_search/features/github_repo/model/search_settings_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_settings_notifier.g.dart';

/// 検索設定を管理するNotifier
@Riverpod(keepAlive: true)
class SearchSettings extends _$SearchSettings {
  @override
  SearchSettingsState build() => SearchSettingsState(
        sort: ref.watch(searchSettingsRepositoryProvider).sort,
        order: ref.watch(searchSettingsRepositoryProvider).order,
      );

  Future<void> setSort(SearchSettingsSort sort) async {
    await ref.read(searchSettingsRepositoryProvider).setSort(sort);
    state = state.copyWith(sort: sort);
  }

  Future<void> setOrder(SearchSettingsOrder order) async {
    await ref.read(searchSettingsRepositoryProvider).setOrder(order);
    state = state.copyWith(order: order);
  }
}
