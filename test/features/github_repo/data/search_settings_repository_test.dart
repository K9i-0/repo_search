import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_search/common/shared_preferences.dart';
import 'package:repo_search/features/github_repo/data/search_settings_repository.dart';
import 'package:repo_search/features/github_repo/model/search_settings_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  test('sortを取得でき、初期値はbestMatch', () async {
    final container = ProviderContainer(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(
          await SharedPreferences.getInstance(),
        ),
      ],
    );

    final searchSettingsRepository =
        container.read(searchSettingsRepositoryProvider);

    expect(searchSettingsRepository.sort, SearchSettingsSort.bestMatch);
  });

  test('sortを設定できる', () async {
    final container = ProviderContainer(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(
          await SharedPreferences.getInstance(),
        ),
      ],
    );

    final searchSettingsRepository =
        container.read(searchSettingsRepositoryProvider);

    expect(searchSettingsRepository.sort, SearchSettingsSort.bestMatch);

    await searchSettingsRepository.setSort(SearchSettingsSort.stars);

    expect(searchSettingsRepository.sort, SearchSettingsSort.stars);
  });

  test('orderを取得でき、初期値はdesc', () async {
    final container = ProviderContainer(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(
          await SharedPreferences.getInstance(),
        ),
      ],
    );

    final searchSettingsRepository =
        container.read(searchSettingsRepositoryProvider);

    expect(searchSettingsRepository.order, SearchSettingsOrder.desc);
  });

  test('orderを設定できる', () async {
    final container = ProviderContainer(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(
          await SharedPreferences.getInstance(),
        ),
      ],
    );

    final searchSettingsRepository =
        container.read(searchSettingsRepositoryProvider);

    expect(searchSettingsRepository.order, SearchSettingsOrder.desc);

    await searchSettingsRepository.setOrder(SearchSettingsOrder.asc);

    expect(searchSettingsRepository.order, SearchSettingsOrder.asc);
  });
}
