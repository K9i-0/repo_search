import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_search/utils/build_context_extension.dart';

/// 検索バー
class SearchBar extends HookConsumerWidget {
  const SearchBar({
    required this.controller,
    super.key,
  });
  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 70,
      child: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          decoration: const BoxDecoration(
            color: Color(0xff35404d),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                const Icon(Icons.search, color: Colors.grey),
                const SizedBox(width: 10),
                Expanded(
                  child: Center(
                    child: TextField(
                      controller: controller,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                        isDense: true,
                        hintText: context.l10n.searchBarHint,
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                      ),
                      onEditingComplete:
                          FocusManager.instance.primaryFocus?.unfocus,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
