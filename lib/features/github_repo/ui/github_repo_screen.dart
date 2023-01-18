import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_search/features/github_repo/data/gihub_repo_repository.dart';
import 'package:repo_search/features/github_repo/model/search_repos_result.dart';

final aProvider = FutureProvider<SearchReposResult>(
  (ref) {
    return ref.watch(githubRepoRepositoryProvider).searchRepos();
  },
);

class GithubRepoScreen extends HookConsumerWidget {
  const GithubRepoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Github Repo'),
      ),
      body: Center(
        child: ref.watch(aProvider).when(
              data: (data) => Content(data: data),
              loading: () => const CircularProgressIndicator(),
              error: (error, stackTrace) => const Text('error'),
            ),
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
        for (final item in data.items)
          ListTile(
            title: Text(item.name),
          ),
      ],
    );
  }
}
