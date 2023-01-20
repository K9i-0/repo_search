import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_search/utils/build_context_extension.dart';

/// シートの見た目を統一するためのメソッド
///
/// [shareProviderScope]をtrueにすると、[context]の[ProviderScope]を共有する
Future<T?> showCommonSheet<T>({
  required BuildContext context,
  required String title,
  required WidgetBuilder builder,
  bool shareProviderScope = false,
}) async {
  final parentProviderContainer = ProviderScope.containerOf(context);

  return showModalBottomSheet<T>(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(16),
      ),
    ),
    builder: (BuildContext context) {
      return SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Gap(16),
                Text(
                  title,
                  style: context.textTheme.titleLarge,
                ),
                const Spacer(),
                IconButton(
                  padding: const EdgeInsets.all(16),
                  icon: const Icon(
                    Icons.close,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
            const Divider(height: 1, endIndent: 8, indent: 8),
            if (shareProviderScope)
              ProviderScope(
                parent: parentProviderContainer,
                child: builder(context),
              )
            else
              builder(context),
          ],
        ),
      );
    },
  );
}
