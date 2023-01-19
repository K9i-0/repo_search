import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

/// 汎用空表示Widget
class CommonMessageView extends StatelessWidget {
  final IconData? icon;
  final String message;
  const CommonMessageView({
    super.key,
    this.icon,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon ?? Icons.info_outline, size: 48),
        const Gap(16),
        Text(message),
      ],
    );
  }
}
