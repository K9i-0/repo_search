// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_repo_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GithubRepoListState {
  List<GithubRepo> get items => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubRepoListStateCopyWith<GithubRepoListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepoListStateCopyWith<$Res> {
  factory $GithubRepoListStateCopyWith(
          GithubRepoListState value, $Res Function(GithubRepoListState) then) =
      _$GithubRepoListStateCopyWithImpl<$Res, GithubRepoListState>;
  @useResult
  $Res call({List<GithubRepo> items, bool hasMore, int page});
}

/// @nodoc
class _$GithubRepoListStateCopyWithImpl<$Res, $Val extends GithubRepoListState>
    implements $GithubRepoListStateCopyWith<$Res> {
  _$GithubRepoListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? hasMore = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GithubRepo>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GithubRepoListStateCopyWith<$Res>
    implements $GithubRepoListStateCopyWith<$Res> {
  factory _$$_GithubRepoListStateCopyWith(_$_GithubRepoListState value,
          $Res Function(_$_GithubRepoListState) then) =
      __$$_GithubRepoListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GithubRepo> items, bool hasMore, int page});
}

/// @nodoc
class __$$_GithubRepoListStateCopyWithImpl<$Res>
    extends _$GithubRepoListStateCopyWithImpl<$Res, _$_GithubRepoListState>
    implements _$$_GithubRepoListStateCopyWith<$Res> {
  __$$_GithubRepoListStateCopyWithImpl(_$_GithubRepoListState _value,
      $Res Function(_$_GithubRepoListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? hasMore = null,
    Object? page = null,
  }) {
    return _then(_$_GithubRepoListState(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GithubRepo>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GithubRepoListState
    with DiagnosticableTreeMixin
    implements _GithubRepoListState {
  const _$_GithubRepoListState(
      {required final List<GithubRepo> items,
      required this.hasMore,
      required this.page})
      : _items = items;

  final List<GithubRepo> _items;
  @override
  List<GithubRepo> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final bool hasMore;
  @override
  final int page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GithubRepoListState(items: $items, hasMore: $hasMore, page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GithubRepoListState'))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('hasMore', hasMore))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubRepoListState &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), hasMore, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GithubRepoListStateCopyWith<_$_GithubRepoListState> get copyWith =>
      __$$_GithubRepoListStateCopyWithImpl<_$_GithubRepoListState>(
          this, _$identity);
}

abstract class _GithubRepoListState implements GithubRepoListState {
  const factory _GithubRepoListState(
      {required final List<GithubRepo> items,
      required final bool hasMore,
      required final int page}) = _$_GithubRepoListState;

  @override
  List<GithubRepo> get items;
  @override
  bool get hasMore;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$_GithubRepoListStateCopyWith<_$_GithubRepoListState> get copyWith =>
      throw _privateConstructorUsedError;
}
