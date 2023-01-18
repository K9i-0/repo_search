import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_search/common/github_access_token.dart';
import 'package:repo_search/features/github_repo/model/search_repos_result.dart';

final githubRepoRepositoryProvider = Provider<GithubRepoRepository>(
  (ref) => GithubRepoRepository(
    token: ref.watch(githubAccessTokenProvider),
  ),
);

class GithubRepoRepository {
  GithubRepoRepository({
    required this.token,
  });
  final dio = Dio();
  final String token;

  /// Github APIのSearch repositoriesを叩く
  ///
  /// https://docs.github.com/ja/rest/search?apiVersion=2022-11-28#search-repositories
  Future<SearchReposResult> searchRepos() async {
    final response = await dio.get(
      'https://api.github.com/search/repositories?q=flutter',
      options: Options(
        headers: {
          'Accept': 'application/vnd.github.v3+json',
          'Authorization': 'token $token',
          'X-GitHub-Api-Version': '2022-11-28',
        },
      ),
    );

    return SearchReposResult.fromJson(response.data);
  }
}
