import 'package:flutter/material.dart';
import 'package:repo_search/features/settings/data/settings_repository.dart';
import 'package:repo_search/features/settings/model/settings_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_notifier.g.dart';

/// アプリの設定を管理するNotifier
@Riverpod(keepAlive: true)
class Settings extends _$Settings {
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
