// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GithubRepo _$$_GithubRepoFromJson(Map<String, dynamic> json) =>
    _$_GithubRepo(
      fullName: json['full_name'] as String,
      description: json['description'] as String?,
      stargazersCount: json['stargazers_count'] as int,
      topics:
          (json['topics'] as List<dynamic>).map((e) => e as String).toList(),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_GithubRepoToJson(_$_GithubRepo instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'description': instance.description,
      'stargazers_count': instance.stargazersCount,
      'topics': instance.topics,
      'updated_at': instance.updatedAt.toIso8601String(),
    };
