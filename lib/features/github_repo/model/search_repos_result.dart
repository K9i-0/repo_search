// ignore: unused_import, directives_ordering
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repo_search/features/github_repo/model/github_repo.dart';

part 'search_repos_result.freezed.dart';
part 'search_repos_result.g.dart';

@freezed
class SearchReposResult with _$SearchReposResult {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SearchReposResult({
    required int totalCount,
    required List<GithubRepo> items,
  }) = _SearchReposResult;

  factory SearchReposResult.fromJson(Map<String, dynamic> json) =>
      _$SearchReposResultFromJson(json);
}
