// ignore: unused_import, directives_ordering
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repo_search/features/github_repo/model/github_repo.dart';

part 'github_repo_list_state.freezed.dart';

@freezed
class GithubRepoListState with _$GithubRepoListState {
  const factory GithubRepoListState({
    required List<GithubRepo> items,
    required bool hasMore,
    required int page,
  }) = _GithubRepoListState;
}
