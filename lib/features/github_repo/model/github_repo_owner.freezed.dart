// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_repo_owner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GithubRepoOwner _$GithubRepoOwnerFromJson(Map<String, dynamic> json) {
  return _GithubRepoOwner.fromJson(json);
}

/// @nodoc
mixin _$GithubRepoOwner {
  String get login => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  String get htmlUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubRepoOwnerCopyWith<GithubRepoOwner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepoOwnerCopyWith<$Res> {
  factory $GithubRepoOwnerCopyWith(
          GithubRepoOwner value, $Res Function(GithubRepoOwner) then) =
      _$GithubRepoOwnerCopyWithImpl<$Res, GithubRepoOwner>;
  @useResult
  $Res call({String login, String avatarUrl, String htmlUrl});
}

/// @nodoc
class _$GithubRepoOwnerCopyWithImpl<$Res, $Val extends GithubRepoOwner>
    implements $GithubRepoOwnerCopyWith<$Res> {
  _$GithubRepoOwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? avatarUrl = null,
    Object? htmlUrl = null,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GithubRepoOwnerCopyWith<$Res>
    implements $GithubRepoOwnerCopyWith<$Res> {
  factory _$$_GithubRepoOwnerCopyWith(
          _$_GithubRepoOwner value, $Res Function(_$_GithubRepoOwner) then) =
      __$$_GithubRepoOwnerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String login, String avatarUrl, String htmlUrl});
}

/// @nodoc
class __$$_GithubRepoOwnerCopyWithImpl<$Res>
    extends _$GithubRepoOwnerCopyWithImpl<$Res, _$_GithubRepoOwner>
    implements _$$_GithubRepoOwnerCopyWith<$Res> {
  __$$_GithubRepoOwnerCopyWithImpl(
      _$_GithubRepoOwner _value, $Res Function(_$_GithubRepoOwner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? avatarUrl = null,
    Object? htmlUrl = null,
  }) {
    return _then(_$_GithubRepoOwner(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubRepoOwner
    with DiagnosticableTreeMixin
    implements _GithubRepoOwner {
  const _$_GithubRepoOwner(
      {required this.login, required this.avatarUrl, required this.htmlUrl});

  factory _$_GithubRepoOwner.fromJson(Map<String, dynamic> json) =>
      _$$_GithubRepoOwnerFromJson(json);

  @override
  final String login;
  @override
  final String avatarUrl;
  @override
  final String htmlUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GithubRepoOwner(login: $login, avatarUrl: $avatarUrl, htmlUrl: $htmlUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GithubRepoOwner'))
      ..add(DiagnosticsProperty('login', login))
      ..add(DiagnosticsProperty('avatarUrl', avatarUrl))
      ..add(DiagnosticsProperty('htmlUrl', htmlUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubRepoOwner &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, login, avatarUrl, htmlUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GithubRepoOwnerCopyWith<_$_GithubRepoOwner> get copyWith =>
      __$$_GithubRepoOwnerCopyWithImpl<_$_GithubRepoOwner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GithubRepoOwnerToJson(
      this,
    );
  }
}

abstract class _GithubRepoOwner implements GithubRepoOwner {
  const factory _GithubRepoOwner(
      {required final String login,
      required final String avatarUrl,
      required final String htmlUrl}) = _$_GithubRepoOwner;

  factory _GithubRepoOwner.fromJson(Map<String, dynamic> json) =
      _$_GithubRepoOwner.fromJson;

  @override
  String get login;
  @override
  String get avatarUrl;
  @override
  String get htmlUrl;
  @override
  @JsonKey(ignore: true)
  _$$_GithubRepoOwnerCopyWith<_$_GithubRepoOwner> get copyWith =>
      throw _privateConstructorUsedError;
}
