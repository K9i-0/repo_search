// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_repos_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchReposResult _$$_SearchReposResultFromJson(Map<String, dynamic> json) =>
    _$_SearchReposResult(
      totalCount: json['total_count'] as int,
      items: (json['items'] as List<dynamic>)
          .map((e) => GithubRepo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SearchReposResultToJson(
        _$_SearchReposResult instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'items': instance.items,
    };
