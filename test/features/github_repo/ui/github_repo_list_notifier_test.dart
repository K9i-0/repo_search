import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:repo_search/features/github_repo/data/gihub_repo_repository.dart';
import 'package:repo_search/features/github_repo/data/search_settings_repository.dart';
import 'package:repo_search/features/github_repo/model/github_repo_list_state.dart';
import 'package:repo_search/features/github_repo/model/search_repos_result.dart';
import 'package:repo_search/features/github_repo/model/search_settings_state.dart';
import 'package:repo_search/features/github_repo/ui/github_repo_list_notifier.dart';

import 'github_repo_list_notifier_test.mocks.dart';

class Listener extends Mock {
  void call(AsyncValue<GithubRepoListState>? previous,
      AsyncValue<GithubRepoListState> value);
}

@GenerateMocks([GithubRepoRepository, SearchSettingsRepository])
void main() {
  test('1ページ目の取得', () async {
    final mockGithubRepoRepository = MockGithubRepoRepository();
    when(
      mockGithubRepoRepository.searchRepos(
        searchKeywords: 'flutter',
        sort: SearchSettingsSort.bestMatch,
        order: SearchSettingsOrder.desc,
        page: 1,
        cancelToken: anyNamed('cancelToken'),
      ),
    ).thenAnswer(
      (_) async => const SearchReposResult(
        items: [],
        totalCount: 0,
      ),
    );

    final mockSearchSettingsRepository = MockSearchSettingsRepository();
    when(mockSearchSettingsRepository.sort)
        .thenReturn(SearchSettingsSort.bestMatch);
    when(mockSearchSettingsRepository.order)
        .thenReturn(SearchSettingsOrder.desc);

    final container = ProviderContainer(
      overrides: [
        githubRepoRepositoryProvider.overrideWithValue(
          mockGithubRepoRepository,
        ),
        searchSettingsRepositoryProvider.overrideWithValue(
          mockSearchSettingsRepository,
        ),
      ],
    );
    addTearDown(container.dispose);
    final listener = Listener();
    container.listen(
      githubRepoListProviderFamily('flutter'),
      listener,
      fireImmediately: true,
    );

    verify(listener(
      null,
      const AsyncValue.loading(),
    )).called(1);

    await container.read(githubRepoListProviderFamily('flutter').future);

    verify(listener(
      const AsyncValue.loading(),
      const AsyncValue.data(
        GithubRepoListState(items: [], hasMore: false, page: 1),
      ),
    )).called(1);
    verifyNoMoreInteractions(listener);

    verify(mockGithubRepoRepository.searchRepos(
      searchKeywords: 'flutter',
      sort: SearchSettingsSort.bestMatch,
      order: SearchSettingsOrder.desc,
      page: 1,
      cancelToken: anyNamed('cancelToken'),
    )).called(1);
  });

  test('2ページ目の取得', () async {
    final mockGithubRepoRepository = MockGithubRepoRepository();
    when(
      mockGithubRepoRepository.searchRepos(
        searchKeywords: 'flutter',
        sort: SearchSettingsSort.bestMatch,
        order: SearchSettingsOrder.desc,
        page: 1,
        cancelToken: anyNamed('cancelToken'),
      ),
    ).thenAnswer(
      (_) async => const SearchReposResult(
        items: [],
        totalCount: 1,
      ),
    );
    when(
      mockGithubRepoRepository.searchRepos(
        searchKeywords: 'flutter',
        sort: SearchSettingsSort.bestMatch,
        order: SearchSettingsOrder.desc,
        page: 2,
        cancelToken: anyNamed('cancelToken'),
      ),
    ).thenAnswer(
      (_) async => const SearchReposResult(
        items: [],
        totalCount: 0,
      ),
    );

    final mockSearchSettingsRepository = MockSearchSettingsRepository();
    when(mockSearchSettingsRepository.sort)
        .thenReturn(SearchSettingsSort.bestMatch);
    when(mockSearchSettingsRepository.order)
        .thenReturn(SearchSettingsOrder.desc);

    final container = ProviderContainer(
      overrides: [
        githubRepoRepositoryProvider.overrideWithValue(
          mockGithubRepoRepository,
        ),
        searchSettingsRepositoryProvider.overrideWithValue(
          mockSearchSettingsRepository,
        ),
      ],
    );
    addTearDown(container.dispose);
    final listener = Listener();
    container.listen(
      githubRepoListProviderFamily('flutter'),
      listener,
      fireImmediately: true,
    );

    verify(listener(
      null,
      const AsyncValue.loading(),
    )).called(1);

    await container.read(githubRepoListProviderFamily('flutter').future);

    verify(listener(
      const AsyncValue.loading(),
      const AsyncValue.data(
        GithubRepoListState(items: [], hasMore: true, page: 1),
      ),
    )).called(1);
    verifyNoMoreInteractions(listener);

    verify(mockGithubRepoRepository.searchRepos(
      searchKeywords: 'flutter',
      sort: SearchSettingsSort.bestMatch,
      order: SearchSettingsOrder.desc,
      page: 1,
      cancelToken: anyNamed('cancelToken'),
    )).called(1);

    final notifier =
        container.read(githubRepoListProviderFamily('flutter').notifier);
    await notifier.loadNext();

    verify(listener(
      const AsyncData<GithubRepoListState>(
          GithubRepoListState(items: [], hasMore: true, page: 1)),
      const AsyncLoading<GithubRepoListState>().copyWithPrevious(
        const AsyncValue.data(
          GithubRepoListState(items: [], hasMore: true, page: 1),
        ),
      ),
    )).called(1);
    verify(listener(
      const AsyncLoading<GithubRepoListState>().copyWithPrevious(
        const AsyncValue.data(
          GithubRepoListState(items: [], hasMore: true, page: 1),
        ),
      ),
      const AsyncValue.data(
        GithubRepoListState(items: [], hasMore: false, page: 2),
      ),
    )).called(1);
    verifyNoMoreInteractions(listener);

    verify(mockGithubRepoRepository.searchRepos(
      searchKeywords: 'flutter',
      sort: SearchSettingsSort.bestMatch,
      order: SearchSettingsOrder.desc,
      page: 2,
      cancelToken: anyNamed('cancelToken'),
    )).called(1);
  });
}
