import 'dart:io';

import 'package:grinder/grinder.dart';

void main(List<String> args) => grind(args);

Future<void> _runCommand({
  required String command,
}) async {
  final splittedCommand = command.split(' ');
  log(command);
  final process = await Process.start(
    splittedCommand.first,
    splittedCommand.sublist(1),
  );
  stdout.addStream(process.stdout);
  stderr.addStream(process.stderr);
}

@Task('flutter pub run build_runner build --delete-conflicting-outputs')
void b() {
  _runCommand(command: 'flutter pub run build_runner build -d');
}

@Task('flutter pub run build_runner watch --delete-conflicting-outputs')
void w() {
  _runCommand(command: 'flutter pub run build_runner watch -d');
}

@Task('CocoaPodsのアップデート(パッケージアプデ時に使う)')
void up() {
  run(
    'rm',
    arguments: ['-rf', 'Pods/'],
    workingDirectory: 'ios',
  );
  run(
    'rm',
    arguments: ['-rf', 'Podfile.lock'],
    workingDirectory: 'ios',
  );
  run(
    'flutter',
    arguments: ['clean'],
  );
  run(
    'flutter',
    arguments: ['pub', 'get'],
  );
  run(
    'pod',
    arguments: ['install', '--repo-update'],
    workingDirectory: 'ios',
  );
}

@Task('fluttergenでassetsを生成')
void ga() {
  _runCommand(command: 'fluttergen -c pubspec.yaml');
}

@Task('flutter_launcher_iconsでアイコンを生成')
void gi() {
  _runCommand(command: 'flutter pub run flutter_launcher_icons:main');
}

@Task('flutter_native_splashでスプラッシュを生成')
void gs() {
  _runCommand(command: 'flutter pub run flutter_native_splash:create');
}
