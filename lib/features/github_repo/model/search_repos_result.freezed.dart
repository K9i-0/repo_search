// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_repos_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchReposResult _$SearchReposResultFromJson(Map<String, dynamic> json) {
  return _SearchReposResult.fromJson(json);
}

/// @nodoc
mixin _$SearchReposResult {
  int get totalCount => throw _privateConstructorUsedError;
  List<GithubRepo> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchReposResultCopyWith<SearchReposResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchReposResultCopyWith<$Res> {
  factory $SearchReposResultCopyWith(
          SearchReposResult value, $Res Function(SearchReposResult) then) =
      _$SearchReposResultCopyWithImpl<$Res, SearchReposResult>;
  @useResult
  $Res call({int totalCount, List<GithubRepo> items});
}

/// @nodoc
class _$SearchReposResultCopyWithImpl<$Res, $Val extends SearchReposResult>
    implements $SearchReposResultCopyWith<$Res> {
  _$SearchReposResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GithubRepo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchReposResultCopyWith<$Res>
    implements $SearchReposResultCopyWith<$Res> {
  factory _$$_SearchReposResultCopyWith(_$_SearchReposResult value,
          $Res Function(_$_SearchReposResult) then) =
      __$$_SearchReposResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalCount, List<GithubRepo> items});
}

/// @nodoc
class __$$_SearchReposResultCopyWithImpl<$Res>
    extends _$SearchReposResultCopyWithImpl<$Res, _$_SearchReposResult>
    implements _$$_SearchReposResultCopyWith<$Res> {
  __$$_SearchReposResultCopyWithImpl(
      _$_SearchReposResult _value, $Res Function(_$_SearchReposResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? items = null,
  }) {
    return _then(_$_SearchReposResult(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GithubRepo>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_SearchReposResult
    with DiagnosticableTreeMixin
    implements _SearchReposResult {
  const _$_SearchReposResult(
      {required this.totalCount, required final List<GithubRepo> items})
      : _items = items;

  factory _$_SearchReposResult.fromJson(Map<String, dynamic> json) =>
      _$$_SearchReposResultFromJson(json);

  @override
  final int totalCount;
  final List<GithubRepo> _items;
  @override
  List<GithubRepo> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchReposResult(totalCount: $totalCount, items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchReposResult'))
      ..add(DiagnosticsProperty('totalCount', totalCount))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchReposResult &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, totalCount, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchReposResultCopyWith<_$_SearchReposResult> get copyWith =>
      __$$_SearchReposResultCopyWithImpl<_$_SearchReposResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchReposResultToJson(
      this,
    );
  }
}

abstract class _SearchReposResult implements SearchReposResult {
  const factory _SearchReposResult(
      {required final int totalCount,
      required final List<GithubRepo> items}) = _$_SearchReposResult;

  factory _SearchReposResult.fromJson(Map<String, dynamic> json) =
      _$_SearchReposResult.fromJson;

  @override
  int get totalCount;
  @override
  List<GithubRepo> get items;
  @override
  @JsonKey(ignore: true)
  _$$_SearchReposResultCopyWith<_$_SearchReposResult> get copyWith =>
      throw _privateConstructorUsedError;
}
