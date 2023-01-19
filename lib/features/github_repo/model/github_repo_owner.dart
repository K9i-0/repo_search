// ignore: unused_import, directives_ordering
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_repo_owner.freezed.dart';
part 'github_repo_owner.g.dart';

@freezed
class GithubRepoOwner with _$GithubRepoOwner {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubRepoOwner({
    required String avatarUrl,
  }) = _GithubRepoOwner;

  factory GithubRepoOwner.fromJson(Map<String, dynamic> json) =>
      _$GithubRepoOwnerFromJson(json);
}
