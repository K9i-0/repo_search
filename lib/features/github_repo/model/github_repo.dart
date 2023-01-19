// ignore: unused_import, directives_ordering
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repo_search/features/github_repo/model/github_repo_owner.dart';

part 'github_repo.freezed.dart';
part 'github_repo.g.dart';

@freezed
class GithubRepo with _$GithubRepo {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubRepo({
    required String fullName,
    required String? description,
    required int stargazersCount,
    required String url,
    required int forksCount,
    required int openIssuesCount,
    required List<String> topics,
    required DateTime updatedAt,
    required String? language,
    required GithubRepoOwner owner,
  }) = _GithubRepo;

  factory GithubRepo.fromJson(Map<String, dynamic> json) =>
      _$GithubRepoFromJson(json);
}

extension GithubRepoX on GithubRepo {
  String get ownerImageUrl => owner.avatarUrl;
}
