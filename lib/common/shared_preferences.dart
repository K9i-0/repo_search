import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferencesProvider = Provider<SharedPreferences>(
  // main.dartで初期化する
  (ref) => throw UnimplementedError(),
);

/// キー被りを防ぐためのenum
/// Keyとしてはenumのnameを使う
enum SharedPreferencesKeys {
  themeMode,
}
