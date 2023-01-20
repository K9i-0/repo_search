import 'package:flutter/material.dart';
import 'package:repo_search/resource/l10n/generated/l10n.dart';

extension BuildContextX on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  L10n get l10n => L10n.of(this);
}
