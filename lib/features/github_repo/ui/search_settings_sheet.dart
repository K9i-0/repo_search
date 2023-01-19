import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_search/features/github_repo/model/search_settings_state.dart';
import 'package:repo_search/features/github_repo/ui/search_settings_notifier.dart';
import 'package:repo_search/resource/l10n/generated/l10n.dart';
import 'package:repo_search/utils/build_context_extension.dart';

extension _L10nX on L10n {
  String sort(SearchSettingsSort sort) {
    switch (sort) {
      case SearchSettingsSort.stars:
        return searchSettingsSortStars;
      case SearchSettingsSort.forks:
        return searchSettingsSortForks;
      case SearchSettingsSort.updated:
        return searchSettingsSortUpdated;
      case SearchSettingsSort.helpWantedIssues:
        return searchSettingsSortHelpWantedIssues;
    }
  }

  String order(SearchSettingsOrder order) {
    switch (order) {
      case SearchSettingsOrder.desc:
        return searchSettingsOrderDesc;
      case SearchSettingsOrder.asc:
        return searchSettingsOrderAsc;
    }
  }
}

class SearchSettingsSheet extends HookConsumerWidget {
  const SearchSettingsSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Flexible(
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: [
          const Gap(8),
          Center(
            child: Text(
              context.l10n.searchSettingsSort,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          ...SearchSettingsSort.values
              .map(
                (sortType) => RadioListTile(
                  title: Text(context.l10n.sort(sortType)),
                  value: sortType,
                  groupValue: ref.watch(
                      searchSettingsProvider.select((value) => value.sort)),
                  onChanged: (SearchSettingsSort? value) {
                    ref.read(searchSettingsProvider.notifier).setSort(value!);
                  },
                ),
              )
              .toList(),
          const Gap(16),
          Center(
            child: Text(
              context.l10n.searchSettingsOrder,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const Gap(8),
          ...SearchSettingsOrder.values
              .map(
                (orderType) => RadioListTile(
                  title: Text(context.l10n.order(orderType)),
                  value: orderType,
                  groupValue: ref.watch(
                      searchSettingsProvider.select((value) => value.order)),
                  onChanged: (SearchSettingsOrder? value) {
                    ref.read(searchSettingsProvider.notifier).setOrder(value!);
                  },
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
