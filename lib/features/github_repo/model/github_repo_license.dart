// ignore: unused_import, directives_ordering
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_repo_license.freezed.dart';
part 'github_repo_license.g.dart';

@freezed
class GithubRepoLicense with _$GithubRepoLicense {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubRepoLicense({
    required String name,
  }) = _GithubRepoLicense;

  factory GithubRepoLicense.fromJson(Map<String, dynamic> json) =>
      _$GithubRepoLicenseFromJson(json);
}
