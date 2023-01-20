import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_search/features/settings/data/settings_repository.dart';
import 'package:repo_search/features/settings/model/settings_state.dart';

final settingsProvider = NotifierProvider<SettingsNotifier, SettingsState>(
  () => SettingsNotifier(),
);

/// アプリの設定を管理するNotifier
class SettingsNotifier extends Notifier<SettingsState> {
  @override
  SettingsState build() {
    return SettingsState(
      themeMode: ref.watch(settingsRepositoryProvider).themeMode,
    );
  }

  Future<void> setThemeMode(ThemeMode themeMode) async {
    await ref.read(settingsRepositoryProvider).setThemeMode(themeMode);
    state = state.copyWith(themeMode: themeMode);
  }
}
