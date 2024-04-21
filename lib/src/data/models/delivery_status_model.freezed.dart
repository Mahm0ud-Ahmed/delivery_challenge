// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryStatusModel _$DeliveryStatusModelFromJson(Map<String, dynamic> json) {
  return _DeliveryStatusModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryStatusModel {
  @JsonKey(name: 'DeliveryStatusTypes')
  List<DeliveryTypeModel> get statues => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryStatusModelCopyWith<DeliveryStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryStatusModelCopyWith<$Res> {
  factory $DeliveryStatusModelCopyWith(
          DeliveryStatusModel value, $Res Function(DeliveryStatusModel) then) =
      _$DeliveryStatusModelCopyWithImpl<$Res, DeliveryStatusModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'DeliveryStatusTypes') List<DeliveryTypeModel> statues});
}

/// @nodoc
class _$DeliveryStatusModelCopyWithImpl<$Res, $Val extends DeliveryStatusModel>
    implements $DeliveryStatusModelCopyWith<$Res> {
  _$DeliveryStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statues = null,
  }) {
    return _then(_value.copyWith(
      statues: null == statues
          ? _value.statues
          : statues // ignore: cast_nullable_to_non_nullable
              as List<DeliveryTypeModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryStatusModelImplCopyWith<$Res>
    implements $DeliveryStatusModelCopyWith<$Res> {
  factory _$$DeliveryStatusModelImplCopyWith(_$DeliveryStatusModelImpl value,
          $Res Function(_$DeliveryStatusModelImpl) then) =
      __$$DeliveryStatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'DeliveryStatusTypes') List<DeliveryTypeModel> statues});
}

/// @nodoc
class __$$DeliveryStatusModelImplCopyWithImpl<$Res>
    extends _$DeliveryStatusModelCopyWithImpl<$Res, _$DeliveryStatusModelImpl>
    implements _$$DeliveryStatusModelImplCopyWith<$Res> {
  __$$DeliveryStatusModelImplCopyWithImpl(_$DeliveryStatusModelImpl _value,
      $Res Function(_$DeliveryStatusModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statues = null,
  }) {
    return _then(_$DeliveryStatusModelImpl(
      statues: null == statues
          ? _value._statues
          : statues // ignore: cast_nullable_to_non_nullable
              as List<DeliveryTypeModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryStatusModelImpl implements _DeliveryStatusModel {
  const _$DeliveryStatusModelImpl(
      {@JsonKey(name: 'DeliveryStatusTypes')
      required final List<DeliveryTypeModel> statues})
      : _statues = statues;

  factory _$DeliveryStatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryStatusModelImplFromJson(json);

  final List<DeliveryTypeModel> _statues;
  @override
  @JsonKey(name: 'DeliveryStatusTypes')
  List<DeliveryTypeModel> get statues {
    if (_statues is EqualUnmodifiableListView) return _statues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statues);
  }

  @override
  String toString() {
    return 'DeliveryStatusModel(statues: $statues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryStatusModelImpl &&
            const DeepCollectionEquality().equals(other._statues, _statues));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_statues));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryStatusModelImplCopyWith<_$DeliveryStatusModelImpl> get copyWith =>
      __$$DeliveryStatusModelImplCopyWithImpl<_$DeliveryStatusModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryStatusModelImplToJson(
      this,
    );
  }
}

abstract class _DeliveryStatusModel implements DeliveryStatusModel {
  const factory _DeliveryStatusModel(
          {@JsonKey(name: 'DeliveryStatusTypes')
          required final List<DeliveryTypeModel> statues}) =
      _$DeliveryStatusModelImpl;

  factory _DeliveryStatusModel.fromJson(Map<String, dynamic> json) =
      _$DeliveryStatusModelImpl.fromJson;

  @override
  @JsonKey(name: 'DeliveryStatusTypes')
  List<DeliveryTypeModel> get statues;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryStatusModelImplCopyWith<_$DeliveryStatusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
