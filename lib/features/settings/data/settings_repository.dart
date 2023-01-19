import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_search/common/shared_preferences.dart';

final settingsRepositoryProvider = Provider<SettingsRepository>(
  (ref) => SettingsRepository(ref),
);

class SettingsRepository {
  final Ref _ref;
  const SettingsRepository(this._ref);

  ThemeMode get themeMode {
    final themeModeIndex = _ref
        .read(sharedPreferencesProvider)
        .getInt(SharedPreferencesKeys.themeMode.name);

    if (themeModeIndex == null) {
      return ThemeMode.system;
    }
    return ThemeMode.values[themeModeIndex];
  }

  Future<void> setThemeMode(ThemeMode themeMode) async {
    await _ref
        .read(sharedPreferencesProvider)
        .setInt(SharedPreferencesKeys.themeMode.name, themeMode.index);
  }
}
