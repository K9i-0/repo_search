import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_search/features/github_repo/data/gihub_repo_repository.dart';
import 'package:repo_search/features/github_repo/model/search_repos_result.dart';

final githubRepoListFutureProviderFamily =
    FutureProvider.family<SearchReposResult, String>(
  (ref, searchKeywords) {
    return ref.watch(githubRepoRepositoryProvider).searchRepos(
          searchKeywords: searchKeywords,
        );
  },
);

class GithubRepoScreen extends HookConsumerWidget {
  const GithubRepoScreen({super.key});

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
                        hintText: 'search keywords',
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
