import 'dart:async';

import 'package:repo_search/common/github_access_token.dart';
import 'package:repo_search/features/github_repo/data/gihub_repo_repository.dart';
import 'package:repo_search/features/github_repo/model/github_repo_list_state.dart';
import 'package:repo_search/features/github_repo/ui/search_settings_notifier.dart';
import 'package:repo_search/utils/async_value_extension.dart';
import 'package:repo_search/utils/ref_extension.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'github_repo_list_notifier.g.dart';

@Riverpod(dependencies: [githubRepoRepository])
class GithubRepoList extends _$GithubRepoList {
  @override
  Future<GithubRepoListState> build(String searchKeywords) async {
    final cancelToken = ref.cancelToken();
    // キー入力ごとに検索が実行されるのでDebounce処理を行う
    await ref.debounce();

    final result = await ref.watch(githubRepoRepositoryProvider).searchRepos(
          searchKeywords: searchKeywords,
          // 検索条件が変わったらリビルドされる
          sort: ref.watch(searchSettingsProvider.select((value) => value.sort)),
          order:
              ref.watch(searchSettingsProvider.select((value) => value.order)),
          page: 1,
          cancelToken: cancelToken,
        );
    // 成功時にキャッシュする
    ref.keepAlive();

    return GithubRepoListState(
      items: result.items,
      // item数がtotalCountより少ない時は次のページがある
      hasMore: result.items.length < result.totalCount,
      page: 1,
    );
  }

  Future<void> loadNext() async {
    // データがない時は何もしない
    final value = state.valueOrNull;
    if (value == null) {
      return;
    }
    // エラーがある時は何もしない
    if (state.hasError) {
      return;
    }
    // 次のページがない時は何もしない
    if (!value.hasMore) {
      return;
    }

    // ロード中にする
    state = const AsyncLoading<GithubRepoListState>().copyWithPrevious(state);

    state = await state.guardPlus(
      () async {
        final cancelToken = ref.cancelToken();
        final next = await ref.read(githubRepoRepositoryProvider).searchRepos(
              searchKeywords: searchKeywords,
              sort: ref.read(searchSettingsProvider).sort,
              order: ref.read(searchSettingsProvider).order,
              page: value.page + 1,
              cancelToken: cancelToken,
            );
        // 成功時にキャッシュする
        ref.keepAlive();

        final items = [...value.items, ...next.items];
        return value.copyWith(
          items: items,
          // item数がtotalCountより少ない時は次のページがある
          hasMore: items.length < next.totalCount,
          page: value.page + 1,
        );
      },
    );
  }
}
