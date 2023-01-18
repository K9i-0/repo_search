// ignore: unused_import, directives_ordering
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_repo.freezed.dart';
part 'github_repo.g.dart';

@freezed
class GithubRepo with _$GithubRepo {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubRepo({
    required String name,
  }) = _GithubRepo;

  factory GithubRepo.fromJson(Map<String, dynamic> json) =>
      _$GithubRepoFromJson(json);
}
