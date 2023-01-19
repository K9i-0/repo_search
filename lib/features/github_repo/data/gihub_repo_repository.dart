import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_search/common/github_access_token.dart';
import 'package:repo_search/features/github_repo/model/search_repos_result.dart';
import 'package:repo_search/features/github_repo/model/search_settings_state.dart';

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
  Future<SearchReposResult> searchRepos({
    required String searchKeywords,
    required SearchSettingsSort sort,
    required SearchSettingsOrder order,
    required int page,
  }) async {
    final uri = Uri(
      scheme: 'https',
      host: 'api.github.com',
      path: '/search/repositories',
      queryParameters: {
        'q': searchKeywords,
        'sort': sort.queryParamValue,
        'order': order.queryParamValue,
        'page': page.toString(),
      },
    );

    final response = await dio.getUri(
      uri,
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

  /// Search repositoriesで取得できるwatchers_countは、正確で無いのでsubscribers_countを取得する
  ///
  /// https://github.com/hackenbacker/ios-engineer-codecheck/issues/29
  /// 注意：[searchRepos]に含めてしまうと検索にヒットしたリポジトリの数リクエストを送ってしまうので詳細画面を開く際個別で取得する
  Future<int> getWatchersCount({
    required String repositoryUrl,
  }) async {
    final response = await dio.get(
      repositoryUrl,
      options: Options(
        headers: {
          'Accept': 'application/vnd.github.v3+json',
          'Authorization': 'token $token',
          'X-GitHub-Api-Version': '2022-11-28',
        },
      ),
    );

    return response.data['subscribers_count'];
  }
}
