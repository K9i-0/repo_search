import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_search/common/shared_preferences.dart';
import 'package:repo_search/features/settings/data/settings_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  test('themeModeを取得でき、初期値はsystem', () async {
    final container = ProviderContainer(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(
          await SharedPreferences.getInstance(),
        ),
      ],
    );

    final settingsRepository = container.read(settingsRepositoryProvider);

    expect(settingsRepository.themeMode, ThemeMode.system);
  });

  test('themeModeを設定できる', () async {
    final container = ProviderContainer(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(
          await SharedPreferences.getInstance(),
        ),
      ],
    );

    final settingsRepository = container.read(settingsRepositoryProvider);

    expect(settingsRepository.themeMode, ThemeMode.system);

    await settingsRepository.setThemeMode(ThemeMode.dark);

    expect(settingsRepository.themeMode, ThemeMode.dark);
  });
}
