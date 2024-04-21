// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_data_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiDataEvent {
  ApiInfo get queryParams => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiInfo queryParams) index,
    required TResult Function(ApiInfo queryParams) general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiInfo queryParams)? index,
    TResult? Function(ApiInfo queryParams)? general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiInfo queryParams)? index,
    TResult Function(ApiInfo queryParams)? general,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiIndexData value) index,
    required TResult Function(ApiGeneralData value) general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiIndexData value)? index,
    TResult? Function(ApiGeneralData value)? general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiIndexData value)? index,
    TResult Function(ApiGeneralData value)? general,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiDataEventCopyWith<ApiDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiDataEventCopyWith<$Res> {
  factory $ApiDataEventCopyWith(
          ApiDataEvent value, $Res Function(ApiDataEvent) then) =
      _$ApiDataEventCopyWithImpl<$Res, ApiDataEvent>;
  @useResult
  $Res call({ApiInfo queryParams});
}

/// @nodoc
class _$ApiDataEventCopyWithImpl<$Res, $Val extends ApiDataEvent>
    implements $ApiDataEventCopyWith<$Res> {
  _$ApiDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryParams = null,
  }) {
    return _then(_value.copyWith(
      queryParams: null == queryParams
          ? _value.queryParams
          : queryParams // ignore: cast_nullable_to_non_nullable
              as ApiInfo,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiIndexDataImplCopyWith<$Res>
    implements $ApiDataEventCopyWith<$Res> {
  factory _$$ApiIndexDataImplCopyWith(
          _$ApiIndexDataImpl value, $Res Function(_$ApiIndexDataImpl) then) =
      __$$ApiIndexDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiInfo queryParams});
}

/// @nodoc
class __$$ApiIndexDataImplCopyWithImpl<$Res>
    extends _$ApiDataEventCopyWithImpl<$Res, _$ApiIndexDataImpl>
    implements _$$ApiIndexDataImplCopyWith<$Res> {
  __$$ApiIndexDataImplCopyWithImpl(
      _$ApiIndexDataImpl _value, $Res Function(_$ApiIndexDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryParams = null,
  }) {
    return _then(_$ApiIndexDataImpl(
      queryParams: null == queryParams
          ? _value.queryParams
          : queryParams // ignore: cast_nullable_to_non_nullable
              as ApiInfo,
    ));
  }
}

/// @nodoc

class _$ApiIndexDataImpl implements ApiIndexData {
  const _$ApiIndexDataImpl({required this.queryParams});

  @override
  final ApiInfo queryParams;

  @override
  String toString() {
    return 'ApiDataEvent.index(queryParams: $queryParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiIndexDataImpl &&
            (identical(other.queryParams, queryParams) ||
                other.queryParams == queryParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, queryParams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiIndexDataImplCopyWith<_$ApiIndexDataImpl> get copyWith =>
      __$$ApiIndexDataImplCopyWithImpl<_$ApiIndexDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiInfo queryParams) index,
    required TResult Function(ApiInfo queryParams) general,
  }) {
    return index(queryParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiInfo queryParams)? index,
    TResult? Function(ApiInfo queryParams)? general,
  }) {
    return index?.call(queryParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiInfo queryParams)? index,
    TResult Function(ApiInfo queryParams)? general,
    required TResult orElse(),
  }) {
    if (index != null) {
      return index(queryParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiIndexData value) index,
    required TResult Function(ApiGeneralData value) general,
  }) {
    return index(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiIndexData value)? index,
    TResult? Function(ApiGeneralData value)? general,
  }) {
    return index?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiIndexData value)? index,
    TResult Function(ApiGeneralData value)? general,
    required TResult orElse(),
  }) {
    if (index != null) {
      return index(this);
    }
    return orElse();
  }
}

abstract class ApiIndexData implements ApiDataEvent {
  const factory ApiIndexData({required final ApiInfo queryParams}) =
      _$ApiIndexDataImpl;

  @override
  ApiInfo get queryParams;
  @override
  @JsonKey(ignore: true)
  _$$ApiIndexDataImplCopyWith<_$ApiIndexDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiGeneralDataImplCopyWith<$Res>
    implements $ApiDataEventCopyWith<$Res> {
  factory _$$ApiGeneralDataImplCopyWith(_$ApiGeneralDataImpl value,
          $Res Function(_$ApiGeneralDataImpl) then) =
      __$$ApiGeneralDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiInfo queryParams});
}

/// @nodoc
class __$$ApiGeneralDataImplCopyWithImpl<$Res>
    extends _$ApiDataEventCopyWithImpl<$Res, _$ApiGeneralDataImpl>
    implements _$$ApiGeneralDataImplCopyWith<$Res> {
  __$$ApiGeneralDataImplCopyWithImpl(
      _$ApiGeneralDataImpl _value, $Res Function(_$ApiGeneralDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryParams = null,
  }) {
    return _then(_$ApiGeneralDataImpl(
      queryParams: null == queryParams
          ? _value.queryParams
          : queryParams // ignore: cast_nullable_to_non_nullable
              as ApiInfo,
    ));
  }
}

/// @nodoc

class _$ApiGeneralDataImpl implements ApiGeneralData {
  const _$ApiGeneralDataImpl({required this.queryParams});

  @override
  final ApiInfo queryParams;

  @override
  String toString() {
    return 'ApiDataEvent.general(queryParams: $queryParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiGeneralDataImpl &&
            (identical(other.queryParams, queryParams) ||
                other.queryParams == queryParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, queryParams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiGeneralDataImplCopyWith<_$ApiGeneralDataImpl> get copyWith =>
      __$$ApiGeneralDataImplCopyWithImpl<_$ApiGeneralDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiInfo queryParams) index,
    required TResult Function(ApiInfo queryParams) general,
  }) {
    return general(queryParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiInfo queryParams)? index,
    TResult? Function(ApiInfo queryParams)? general,
  }) {
    return general?.call(queryParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiInfo queryParams)? index,
    TResult Function(ApiInfo queryParams)? general,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general(queryParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiIndexData value) index,
    required TResult Function(ApiGeneralData value) general,
  }) {
    return general(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiIndexData value)? index,
    TResult? Function(ApiGeneralData value)? general,
  }) {
    return general?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiIndexData value)? index,
    TResult Function(ApiGeneralData value)? general,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general(this);
    }
    return orElse();
  }
}

abstract class ApiGeneralData implements ApiDataEvent {
  const factory ApiGeneralData({required final ApiInfo queryParams}) =
      _$ApiGeneralDataImpl;

  @override
  ApiInfo get queryParams;
  @override
  @JsonKey(ignore: true)
  _$$ApiGeneralDataImplCopyWith<_$ApiGeneralDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
