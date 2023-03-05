// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'github_repo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GithubRepo _$$_GithubRepoFromJson(Map<String, dynamic> json) =>
    _$_GithubRepo(
      id: json['id'] as int,
      name: json['name'] as String,
      fullName: json['full_name'] as String,
      description: json['description'] as String?,
      stargazersCount: json['stargazers_count'] as int,
      url: json['url'] as String,
      htmlUrl: json['html_url'] as String,
      forksCount: json['forks_count'] as int,
      openIssuesCount: json['open_issues_count'] as int,
      topics:
          (json['topics'] as List<dynamic>).map((e) => e as String).toList(),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      language: json['language'] as String?,
      owner: GithubRepoOwner.fromJson(json['owner'] as Map<String, dynamic>),
      license: json['license'] == null
          ? null
          : GithubRepoLicense.fromJson(json['license'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GithubRepoToJson(_$_GithubRepo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'full_name': instance.fullName,
      'description': instance.description,
      'stargazers_count': instance.stargazersCount,
      'url': instance.url,
      'html_url': instance.htmlUrl,
      'forks_count': instance.forksCount,
      'open_issues_count': instance.openIssuesCount,
      'topics': instance.topics,
      'updated_at': instance.updatedAt.toIso8601String(),
      'language': instance.language,
      'owner': instance.owner,
      'license': instance.license,
    };
