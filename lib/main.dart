import 'package:device_preview_screenshot/device_preview_screenshot.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_search/utils/device_preview_screenshot_helper.dart';

Future<void> main() async {
  runApp(
    ProviderScope(
      child: DevicePreview(
        enabled: const bool.fromEnvironment('enable_device_preview'),
        tools: const [
          ...DevicePreview.defaultTools,
          DevicePreviewScreenshot(
            onScreenshot: onScreenshot,
          ),
        ],
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
      title: 'Repo Search',
      // useInheritedMediaQuery、locale、builderは、DevicePreviewに必要
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DummyScreen(),
    );
  }
}

class DummyScreen extends StatelessWidget {
  const DummyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dummy Screen'),
      ),
      body: const Center(
        child: Text('Dummy Screen'),
      ),
    );
  }
}
