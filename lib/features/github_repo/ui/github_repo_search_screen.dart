import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:repo_search/features/github_repo/data/gihub_repo_repository.dart';
import 'package:repo_search/features/github_repo/model/github_repo.dart';
import 'package:repo_search/features/github_repo/model/search_repos_result.dart';
import 'package:repo_search/features/github_repo/ui/github_repo_detail_screen.dart';
import 'package:repo_search/features/github_repo/ui/search_bar.dart';
import 'package:repo_search/utils/build_context_extension.dart';

final githubRepoListFutureProviderFamily =
    FutureProvider.family.autoDispose<SearchReposResult, String>(
  (ref, searchKeywords) {
    final result = ref.watch(githubRepoRepositoryProvider).searchRepos(
          searchKeywords: searchKeywords,
        );
    ref.keepAlive();
    return result;
  },
);

class GithubRepoSearchScreen extends HookConsumerWidget {
  const GithubRepoSearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController(text: 'flutter');
    // 検索キーワードに変化があった時リビルドさせる
    useListenable(searchController);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Repo Search'),
      ),
      body: Column(
        children: [
          SearchBar(controller: searchController),
          if (searchController.text.isEmpty)
            const Center(
              child: Text('検索キーワードを入力してください'),
            ),
          if (searchController.text.isNotEmpty)
            Expanded(
              child: ref
                  .watch(
                      githubRepoListFutureProviderFamily(searchController.text))
                  .when(
                    data: (data) => Content(data: data),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    error: (error, stackTrace) => const Text('error'),
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
    super.key,
  });
  final SearchReposResult data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: [
        for (final item in data.items) GithubRepoItem(githubRepo: item)
      ],
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
              child: Hero(
                tag: githubRepo,
                child: CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(
                    githubRepo.ownerImageUrl,
                  ),
                ),
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
                        'Updated on ${updatedAtFormatter.format(githubRepo.updatedAt)}',
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
