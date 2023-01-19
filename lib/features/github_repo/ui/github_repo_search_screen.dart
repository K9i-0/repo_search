import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:repo_search/features/github_repo/model/github_repo.dart';
import 'package:repo_search/features/github_repo/model/github_repo_list_state.dart';
import 'package:repo_search/features/github_repo/ui/github_repo_detail_screen.dart';
import 'package:repo_search/features/github_repo/ui/github_repo_list_notifier.dart';
import 'package:repo_search/features/github_repo/ui/owner_image.dart';
import 'package:repo_search/features/github_repo/ui/search_bar.dart';
import 'package:repo_search/features/github_repo/ui/search_settings_notifier.dart';
import 'package:repo_search/features/github_repo/ui/search_settings_sheet.dart';
import 'package:repo_search/features/settings/ui/settings_screen.dart';
import 'package:repo_search/utils/build_context_extension.dart';
import 'package:repo_search/widgets/common_sheet.dart';
import 'package:visibility_detector/visibility_detector.dart';

class GithubRepoSearchScreen extends HookConsumerWidget {
  const GithubRepoSearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController(text: 'flutter');
    // 検索キーワードに変化があった時リビルドさせる
    useListenable(searchController);

    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.appTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.tune),
            onPressed: () async {
              await showCommonSheet(
                context: context,
                title: context.l10n.searchSettingsTitle,
                // シートを閉じるまで再検索しないために、シート内で別のProviderScopeを使う
                builder: (context) => ProviderScope(
                  overrides: [
                    searchSettingsProvider.overrideWith(
                      () => SearchSettingNotifier(),
                    ),
                  ],
                  child: const SearchSettingsSheet(),
                ),
              );

              // シートを閉じたタイミングでリビルドさせ新しい設定で検索する（設定は永続化されているので、リビルドで読み直せる）
              ref.invalidate(searchSettingsProvider);
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (context) {
                  return const SettingsScreen();
                },
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SearchBar(controller: searchController),
          if (searchController.text.isEmpty)
            Center(
              child: Text(context.l10n.searchKeywordsEmpty),
            ),
          if (searchController.text.isNotEmpty)
            Expanded(
              child: ref
                  .watch(githubRepoListProviderFamily(searchController.text))
                  .when(
                    data: (data) => Content(
                      data: data,
                      onScrollEnd: () => ref
                          .read(githubRepoListProviderFamily(
                                  searchController.text)
                              .notifier)
                          .loadNext(),
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    error: (error, stackTrace) => Center(
                      child: Text(error.toString()),
                    ),
                  ),
            ),
        ],
      ),
    );
  }
}

class Content extends HookConsumerWidget {
  const Content({
    required this.data,
    required this.onScrollEnd,
    super.key,
  });
  final GithubRepoListState data;
  final VoidCallback onScrollEnd;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasMore = data.hasMore;

    return ListView.builder(
      itemCount: data.items.length + (hasMore ? 1 : 0),
      itemBuilder: (context, index) {
        // 最後の要素に達したら次のページを読み込む
        if (index == data.items.length) {
          return VisibilityDetector(
            key: const Key("GithubRepoSearchScreen"),
            onVisibilityChanged: (info) {
              if (info.visibleFraction > 0.1) {
                onScrollEnd();
              }
            },
            child: const Center(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }

        return GithubRepoItem(
          githubRepo: data.items[index],
        );
      },
    );
  }
}

class GithubRepoItem extends HookConsumerWidget {
  const GithubRepoItem({
    required this.githubRepo,
    super.key,
  });
  final GithubRepo githubRepo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final updatedAtFormatter = DateFormat.yMMMd();
    final stargazersCountFormatter = NumberFormat.compact();

    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (context) {
            return GithubRepoDetailScreen(
              githubRepo: githubRepo,
            );
          },
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: OwnerImage(
                githubRepo: githubRepo,
              ),
            ),
            const Gap(8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    githubRepo.fullName,
                    style: context.textTheme.titleMedium,
                  ),
                  const Gap(4),
                  if (githubRepo.description != null)
                    Text(
                      githubRepo.description!,
                      style: context.textTheme.bodySmall,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  const Gap(8),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 12,
                      ),
                      const Gap(2),
                      Text(
                        stargazersCountFormatter
                            .format(githubRepo.stargazersCount),
                        style: context.textTheme.labelSmall,
                      ),
                      const Gap(8),
                      Text(
                        context.l10n.repoUpdatedAt(
                            updatedAtFormatter.format(githubRepo.updatedAt)),
                        // 'Updated on ${updatedAtFormatter.format(githubRepo.updatedAt)}',
                        style: context.textTheme.labelSmall,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
