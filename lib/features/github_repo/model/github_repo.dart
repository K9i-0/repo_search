// ignore: unused_import, directives_ordering
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repo_search/features/github_repo/model/github_repo_license.dart';
import 'package:repo_search/features/github_repo/model/github_repo_owner.dart';

part 'github_repo.freezed.dart';
part 'github_repo.g.dart';

@freezed
class GithubRepo with _$GithubRepo {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubRepo({
    required int id,
    required String name,
    // fullNameはownerとnameが結合されている
    required String fullName,
    required String? description,
    required int stargazersCount,
    required String url,
    required String htmlUrl,
    required int forksCount,
    required int openIssuesCount,
    required List<String> topics,
    required DateTime updatedAt,
    required String? language,
    required GithubRepoOwner owner,
    required GithubRepoLicense? license,
  }) = _GithubRepo;

  factory GithubRepo.fromJson(Map<String, dynamic> json) =>
      _$GithubRepoFromJson(json);
}

extension GithubRepoX on GithubRepo {
  // Html Url系
  String get stargazersHtmlUrl => '$htmlUrl/stargazers';
  String get watchersHtmlUrl => '$htmlUrl/watchers';
  String get forksHtmlUrl => '$htmlUrl/network/members';
  String get issuesHtmlUrl => '$htmlUrl/issues';
  // Owner系
  String get ownerImageUrl => owner.avatarUrl;
  String get ownerName => owner.login;
  String get ownerHtmlUrl => owner.htmlUrl;
  // License系
  String? get licenseName => license?.name;
}
