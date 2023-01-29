import 'package:device_preview_screenshot/device_preview_screenshot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_search/common/github_access_token.dart';
import 'package:repo_search/common/shared_preferences.dart';
import 'package:repo_search/features/github_repo/ui/github_repo_search_screen.dart';
import 'package:repo_search/features/settings/ui/settings_notifier.dart';
import 'package:repo_search/resource/l10n/generated/l10n.dart';
import 'package:repo_search/utils/build_context_extension.dart';
import 'package:repo_search/utils/device_preview_screenshot_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final sharedPreferences = await SharedPreferences.getInstance();
  // .evnから環境変数を読み込む
  await dotenv.load(fileName: '.env');

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
        // 環境変数からGithubのアクセストークンを取得する
        githubAccessTokenProvider.overrideWithValue(
          dotenv.get('GITHUB_ACCESS_TOKEN'),
        ),
      ],
      child: DevicePreview(
        enabled: const bool.fromEnvironment('enable_device_preview'),
        tools: const [
          ...DevicePreview.defaultTools,
          DevicePreviewScreenshot(
            onScreenshot: onScreenshot,
          ),
        ],
        // DevicePreviewでサポートしてない言語が出なくなる
        availableLocales: L10n.supportedLocales,
        builder: (context) => const MyApp(),
      ),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      onGenerateTitle: (context) => context.l10n.appTitle,
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      // useInheritedMediaQuery、locale、builderは、DevicePreviewに必要
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
        brightness: Brightness.dark,
      ),
      themeMode: ref.watch(settingsProvider.select((value) => value.themeMode)),
      home: const GithubRepoSearchScreen(),
    );
  }
}
