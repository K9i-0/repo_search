import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:repo_search/features/github_repo/data/search_settings_repository.dart';
import 'package:repo_search/features/github_repo/model/search_settings_state.dart';
import 'package:repo_search/features/github_repo/ui/search_settings_notifier.dart';

import 'search_settings_notifier_test.mocks.dart';

class Listener extends Mock {
  void call(SearchSettingsState? previous, SearchSettingsState value);
}

@GenerateMocks([SearchSettingsRepository])
void main() {
  test('sortを更新できる', () async {
    final mockSearchSettingsRepository = MockSearchSettingsRepository();
    when(mockSearchSettingsRepository.sort)
        .thenReturn(SearchSettingsSort.bestMatch);
    when(mockSearchSettingsRepository.order)
        .thenReturn(SearchSettingsOrder.desc);
    when(mockSearchSettingsRepository.setSort(SearchSettingsSort.stars))
        .thenAnswer((_) async {});

    final container = ProviderContainer(
      overrides: [
        searchSettingsRepositoryProvider.overrideWithValue(
          mockSearchSettingsRepository,
        ),
      ],
    );
    addTearDown(container.dispose);
    final listener = Listener();
    container.listen(
      searchSettingsProvider,
      listener,
      fireImmediately: true,
    );

    verify(listener(
      null,
      const SearchSettingsState(
        sort: SearchSettingsSort.bestMatch,
        order: SearchSettingsOrder.desc,
      ),
    )).called(1);
    verifyNoMoreInteractions(listener);

    await container
        .read(searchSettingsProvider.notifier)
        .setSort(SearchSettingsSort.stars);

    verify(listener(
      const SearchSettingsState(
        sort: SearchSettingsSort.bestMatch,
        order: SearchSettingsOrder.desc,
      ),
      const SearchSettingsState(
        sort: SearchSettingsSort.stars,
        order: SearchSettingsOrder.desc,
      ),
    )).called(1);
    verifyNoMoreInteractions(listener);

    verify(mockSearchSettingsRepository.setSort(SearchSettingsSort.stars))
        .called(1);
  });

  test('orderを更新できる', () async {
    final mockSearchSettingsRepository = MockSearchSettingsRepository();
    when(mockSearchSettingsRepository.sort)
        .thenReturn(SearchSettingsSort.bestMatch);
    when(mockSearchSettingsRepository.order)
        .thenReturn(SearchSettingsOrder.desc);
    when(mockSearchSettingsRepository.setOrder(SearchSettingsOrder.asc))
        .thenAnswer((_) async {});

    final container = ProviderContainer(
      overrides: [
        searchSettingsRepositoryProvider.overrideWithValue(
          mockSearchSettingsRepository,
        ),
      ],
    );
    addTearDown(container.dispose);
    final listener = Listener();
    container.listen(
      searchSettingsProvider,
      listener,
      fireImmediately: true,
    );

    verify(listener(
      null,
      const SearchSettingsState(
        sort: SearchSettingsSort.bestMatch,
        order: SearchSettingsOrder.desc,
      ),
    )).called(1);
    verifyNoMoreInteractions(listener);

    await container
        .read(searchSettingsProvider.notifier)
        .setOrder(SearchSettingsOrder.asc);

    verify(listener(
      const SearchSettingsState(
        sort: SearchSettingsSort.bestMatch,
        order: SearchSettingsOrder.desc,
      ),
      const SearchSettingsState(
        sort: SearchSettingsSort.bestMatch,
        order: SearchSettingsOrder.asc,
      ),
    )).called(1);
    verifyNoMoreInteractions(listener);

    verify(mockSearchSettingsRepository.setOrder(SearchSettingsOrder.asc))
        .called(1);
  });
}
