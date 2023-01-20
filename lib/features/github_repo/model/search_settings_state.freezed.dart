// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchSettingsState {
  SearchSettingsSort get sort => throw _privateConstructorUsedError;
  SearchSettingsOrder get order => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchSettingsStateCopyWith<SearchSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchSettingsStateCopyWith<$Res> {
  factory $SearchSettingsStateCopyWith(
          SearchSettingsState value, $Res Function(SearchSettingsState) then) =
      _$SearchSettingsStateCopyWithImpl<$Res, SearchSettingsState>;
  @useResult
  $Res call({SearchSettingsSort sort, SearchSettingsOrder order});
}

/// @nodoc
class _$SearchSettingsStateCopyWithImpl<$Res, $Val extends SearchSettingsState>
    implements $SearchSettingsStateCopyWith<$Res> {
  _$SearchSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sort = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SearchSettingsSort,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SearchSettingsOrder,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchSettingsStateCopyWith<$Res>
    implements $SearchSettingsStateCopyWith<$Res> {
  factory _$$_SearchSettingsStateCopyWith(_$_SearchSettingsState value,
          $Res Function(_$_SearchSettingsState) then) =
      __$$_SearchSettingsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SearchSettingsSort sort, SearchSettingsOrder order});
}

/// @nodoc
class __$$_SearchSettingsStateCopyWithImpl<$Res>
    extends _$SearchSettingsStateCopyWithImpl<$Res, _$_SearchSettingsState>
    implements _$$_SearchSettingsStateCopyWith<$Res> {
  __$$_SearchSettingsStateCopyWithImpl(_$_SearchSettingsState _value,
      $Res Function(_$_SearchSettingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sort = null,
    Object? order = null,
  }) {
    return _then(_$_SearchSettingsState(
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SearchSettingsSort,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SearchSettingsOrder,
    ));
  }
}

/// @nodoc

class _$_SearchSettingsState
    with DiagnosticableTreeMixin
    implements _SearchSettingsState {
  const _$_SearchSettingsState({required this.sort, required this.order});

  @override
  final SearchSettingsSort sort;
  @override
  final SearchSettingsOrder order;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchSettingsState(sort: $sort, order: $order)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchSettingsState'))
      ..add(DiagnosticsProperty('sort', sort))
      ..add(DiagnosticsProperty('order', order));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchSettingsState &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sort, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchSettingsStateCopyWith<_$_SearchSettingsState> get copyWith =>
      __$$_SearchSettingsStateCopyWithImpl<_$_SearchSettingsState>(
          this, _$identity);
}

abstract class _SearchSettingsState implements SearchSettingsState {
  const factory _SearchSettingsState(
      {required final SearchSettingsSort sort,
      required final SearchSettingsOrder order}) = _$_SearchSettingsState;

  @override
  SearchSettingsSort get sort;
  @override
  SearchSettingsOrder get order;
  @override
  @JsonKey(ignore: true)
  _$$_SearchSettingsStateCopyWith<_$_SearchSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
