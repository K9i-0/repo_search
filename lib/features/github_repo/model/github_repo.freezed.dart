// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_repo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GithubRepo _$GithubRepoFromJson(Map<String, dynamic> json) {
  return _GithubRepo.fromJson(json);
}

/// @nodoc
mixin _$GithubRepo {
  int get id => throw _privateConstructorUsedError;
  String get name =>
      throw _privateConstructorUsedError; // fullNameはownerとnameが結合されている
  String get fullName => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get stargazersCount => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get htmlUrl => throw _privateConstructorUsedError;
  int get forksCount => throw _privateConstructorUsedError;
  int get openIssuesCount => throw _privateConstructorUsedError;
  List<String> get topics => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  GithubRepoOwner get owner => throw _privateConstructorUsedError;
  GithubRepoLicense? get license => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubRepoCopyWith<GithubRepo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepoCopyWith<$Res> {
  factory $GithubRepoCopyWith(
          GithubRepo value, $Res Function(GithubRepo) then) =
      _$GithubRepoCopyWithImpl<$Res, GithubRepo>;
  @useResult
  $Res call(
      {int id,
      String name,
      String fullName,
      String? description,
      int stargazersCount,
      String url,
      String htmlUrl,
      int forksCount,
      int openIssuesCount,
      List<String> topics,
      DateTime updatedAt,
      String? language,
      GithubRepoOwner owner,
      GithubRepoLicense? license});

  $GithubRepoOwnerCopyWith<$Res> get owner;
  $GithubRepoLicenseCopyWith<$Res>? get license;
}

/// @nodoc
class _$GithubRepoCopyWithImpl<$Res, $Val extends GithubRepo>
    implements $GithubRepoCopyWith<$Res> {
  _$GithubRepoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fullName = null,
    Object? description = freezed,
    Object? stargazersCount = null,
    Object? url = null,
    Object? htmlUrl = null,
    Object? forksCount = null,
    Object? openIssuesCount = null,
    Object? topics = null,
    Object? updatedAt = null,
    Object? language = freezed,
    Object? owner = null,
    Object? license = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      forksCount: null == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
      openIssuesCount: null == openIssuesCount
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int,
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as GithubRepoOwner,
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as GithubRepoLicense?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GithubRepoOwnerCopyWith<$Res> get owner {
    return $GithubRepoOwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GithubRepoLicenseCopyWith<$Res>? get license {
    if (_value.license == null) {
      return null;
    }

    return $GithubRepoLicenseCopyWith<$Res>(_value.license!, (value) {
      return _then(_value.copyWith(license: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GithubRepoCopyWith<$Res>
    implements $GithubRepoCopyWith<$Res> {
  factory _$$_GithubRepoCopyWith(
          _$_GithubRepo value, $Res Function(_$_GithubRepo) then) =
      __$$_GithubRepoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String fullName,
      String? description,
      int stargazersCount,
      String url,
      String htmlUrl,
      int forksCount,
      int openIssuesCount,
      List<String> topics,
      DateTime updatedAt,
      String? language,
      GithubRepoOwner owner,
      GithubRepoLicense? license});

  @override
  $GithubRepoOwnerCopyWith<$Res> get owner;
  @override
  $GithubRepoLicenseCopyWith<$Res>? get license;
}

/// @nodoc
class __$$_GithubRepoCopyWithImpl<$Res>
    extends _$GithubRepoCopyWithImpl<$Res, _$_GithubRepo>
    implements _$$_GithubRepoCopyWith<$Res> {
  __$$_GithubRepoCopyWithImpl(
      _$_GithubRepo _value, $Res Function(_$_GithubRepo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fullName = null,
    Object? description = freezed,
    Object? stargazersCount = null,
    Object? url = null,
    Object? htmlUrl = null,
    Object? forksCount = null,
    Object? openIssuesCount = null,
    Object? topics = null,
    Object? updatedAt = null,
    Object? language = freezed,
    Object? owner = null,
    Object? license = freezed,
  }) {
    return _then(_$_GithubRepo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      forksCount: null == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
      openIssuesCount: null == openIssuesCount
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int,
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as GithubRepoOwner,
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as GithubRepoLicense?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubRepo with DiagnosticableTreeMixin implements _GithubRepo {
  const _$_GithubRepo(
      {required this.id,
      required this.name,
      required this.fullName,
      required this.description,
      required this.stargazersCount,
      required this.url,
      required this.htmlUrl,
      required this.forksCount,
      required this.openIssuesCount,
      required final List<String> topics,
      required this.updatedAt,
      required this.language,
      required this.owner,
      required this.license})
      : _topics = topics;

  factory _$_GithubRepo.fromJson(Map<String, dynamic> json) =>
      _$$_GithubRepoFromJson(json);

  @override
  final int id;
  @override
  final String name;
// fullNameはownerとnameが結合されている
  @override
  final String fullName;
  @override
  final String? description;
  @override
  final int stargazersCount;
  @override
  final String url;
  @override
  final String htmlUrl;
  @override
  final int forksCount;
  @override
  final int openIssuesCount;
  final List<String> _topics;
  @override
  List<String> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  final DateTime updatedAt;
  @override
  final String? language;
  @override
  final GithubRepoOwner owner;
  @override
  final GithubRepoLicense? license;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GithubRepo(id: $id, name: $name, fullName: $fullName, description: $description, stargazersCount: $stargazersCount, url: $url, htmlUrl: $htmlUrl, forksCount: $forksCount, openIssuesCount: $openIssuesCount, topics: $topics, updatedAt: $updatedAt, language: $language, owner: $owner, license: $license)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GithubRepo'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('fullName', fullName))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('stargazersCount', stargazersCount))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('htmlUrl', htmlUrl))
      ..add(DiagnosticsProperty('forksCount', forksCount))
      ..add(DiagnosticsProperty('openIssuesCount', openIssuesCount))
      ..add(DiagnosticsProperty('topics', topics))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('language', language))
      ..add(DiagnosticsProperty('owner', owner))
      ..add(DiagnosticsProperty('license', license));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubRepo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.forksCount, forksCount) ||
                other.forksCount == forksCount) &&
            (identical(other.openIssuesCount, openIssuesCount) ||
                other.openIssuesCount == openIssuesCount) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.license, license) || other.license == license));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      fullName,
      description,
      stargazersCount,
      url,
      htmlUrl,
      forksCount,
      openIssuesCount,
      const DeepCollectionEquality().hash(_topics),
      updatedAt,
      language,
      owner,
      license);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GithubRepoCopyWith<_$_GithubRepo> get copyWith =>
      __$$_GithubRepoCopyWithImpl<_$_GithubRepo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GithubRepoToJson(
      this,
    );
  }
}

abstract class _GithubRepo implements GithubRepo {
  const factory _GithubRepo(
      {required final int id,
      required final String name,
      required final String fullName,
      required final String? description,
      required final int stargazersCount,
      required final String url,
      required final String htmlUrl,
      required final int forksCount,
      required final int openIssuesCount,
      required final List<String> topics,
      required final DateTime updatedAt,
      required final String? language,
      required final GithubRepoOwner owner,
      required final GithubRepoLicense? license}) = _$_GithubRepo;

  factory _GithubRepo.fromJson(Map<String, dynamic> json) =
      _$_GithubRepo.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override // fullNameはownerとnameが結合されている
  String get fullName;
  @override
  String? get description;
  @override
  int get stargazersCount;
  @override
  String get url;
  @override
  String get htmlUrl;
  @override
  int get forksCount;
  @override
  int get openIssuesCount;
  @override
  List<String> get topics;
  @override
  DateTime get updatedAt;
  @override
  String? get language;
  @override
  GithubRepoOwner get owner;
  @override
  GithubRepoLicense? get license;
  @override
  @JsonKey(ignore: true)
  _$$_GithubRepoCopyWith<_$_GithubRepo> get copyWith =>
      throw _privateConstructorUsedError;
}
