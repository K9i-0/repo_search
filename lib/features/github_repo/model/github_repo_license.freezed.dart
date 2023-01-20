// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_repo_license.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GithubRepoLicense _$GithubRepoLicenseFromJson(Map<String, dynamic> json) {
  return _GithubRepoLicense.fromJson(json);
}

/// @nodoc
mixin _$GithubRepoLicense {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubRepoLicenseCopyWith<GithubRepoLicense> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepoLicenseCopyWith<$Res> {
  factory $GithubRepoLicenseCopyWith(
          GithubRepoLicense value, $Res Function(GithubRepoLicense) then) =
      _$GithubRepoLicenseCopyWithImpl<$Res, GithubRepoLicense>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$GithubRepoLicenseCopyWithImpl<$Res, $Val extends GithubRepoLicense>
    implements $GithubRepoLicenseCopyWith<$Res> {
  _$GithubRepoLicenseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GithubRepoLicenseCopyWith<$Res>
    implements $GithubRepoLicenseCopyWith<$Res> {
  factory _$$_GithubRepoLicenseCopyWith(_$_GithubRepoLicense value,
          $Res Function(_$_GithubRepoLicense) then) =
      __$$_GithubRepoLicenseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_GithubRepoLicenseCopyWithImpl<$Res>
    extends _$GithubRepoLicenseCopyWithImpl<$Res, _$_GithubRepoLicense>
    implements _$$_GithubRepoLicenseCopyWith<$Res> {
  __$$_GithubRepoLicenseCopyWithImpl(
      _$_GithubRepoLicense _value, $Res Function(_$_GithubRepoLicense) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_GithubRepoLicense(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubRepoLicense
    with DiagnosticableTreeMixin
    implements _GithubRepoLicense {
  const _$_GithubRepoLicense({required this.name});

  factory _$_GithubRepoLicense.fromJson(Map<String, dynamic> json) =>
      _$$_GithubRepoLicenseFromJson(json);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GithubRepoLicense(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GithubRepoLicense'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubRepoLicense &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GithubRepoLicenseCopyWith<_$_GithubRepoLicense> get copyWith =>
      __$$_GithubRepoLicenseCopyWithImpl<_$_GithubRepoLicense>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GithubRepoLicenseToJson(
      this,
    );
  }
}

abstract class _GithubRepoLicense implements GithubRepoLicense {
  const factory _GithubRepoLicense({required final String name}) =
      _$_GithubRepoLicense;

  factory _GithubRepoLicense.fromJson(Map<String, dynamic> json) =
      _$_GithubRepoLicense.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_GithubRepoLicenseCopyWith<_$_GithubRepoLicense> get copyWith =>
      throw _privateConstructorUsedError;
}
