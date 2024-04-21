// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryTypeModel _$DeliveryTypeModelFromJson(Map<String, dynamic> json) {
  return _DeliveryTypeModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryTypeModel {
  @JsonKey(name: 'TYP_NM')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'TYP_NO')
  String get typeNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryTypeModelCopyWith<DeliveryTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryTypeModelCopyWith<$Res> {
  factory $DeliveryTypeModelCopyWith(
          DeliveryTypeModel value, $Res Function(DeliveryTypeModel) then) =
      _$DeliveryTypeModelCopyWithImpl<$Res, DeliveryTypeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'TYP_NM') String title,
      @JsonKey(name: 'TYP_NO') String typeNo});
}

/// @nodoc
class _$DeliveryTypeModelCopyWithImpl<$Res, $Val extends DeliveryTypeModel>
    implements $DeliveryTypeModelCopyWith<$Res> {
  _$DeliveryTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? typeNo = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      typeNo: null == typeNo
          ? _value.typeNo
          : typeNo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryTypeModelImplCopyWith<$Res>
    implements $DeliveryTypeModelCopyWith<$Res> {
  factory _$$DeliveryTypeModelImplCopyWith(_$DeliveryTypeModelImpl value,
          $Res Function(_$DeliveryTypeModelImpl) then) =
      __$$DeliveryTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'TYP_NM') String title,
      @JsonKey(name: 'TYP_NO') String typeNo});
}

/// @nodoc
class __$$DeliveryTypeModelImplCopyWithImpl<$Res>
    extends _$DeliveryTypeModelCopyWithImpl<$Res, _$DeliveryTypeModelImpl>
    implements _$$DeliveryTypeModelImplCopyWith<$Res> {
  __$$DeliveryTypeModelImplCopyWithImpl(_$DeliveryTypeModelImpl _value,
      $Res Function(_$DeliveryTypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? typeNo = null,
  }) {
    return _then(_$DeliveryTypeModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      typeNo: null == typeNo
          ? _value.typeNo
          : typeNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryTypeModelImpl implements _DeliveryTypeModel {
  const _$DeliveryTypeModelImpl(
      {@JsonKey(name: 'TYP_NM') required this.title,
      @JsonKey(name: 'TYP_NO') required this.typeNo});

  factory _$DeliveryTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryTypeModelImplFromJson(json);

  @override
  @JsonKey(name: 'TYP_NM')
  final String title;
  @override
  @JsonKey(name: 'TYP_NO')
  final String typeNo;

  @override
  String toString() {
    return 'DeliveryTypeModel(title: $title, typeNo: $typeNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryTypeModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.typeNo, typeNo) || other.typeNo == typeNo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, typeNo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryTypeModelImplCopyWith<_$DeliveryTypeModelImpl> get copyWith =>
      __$$DeliveryTypeModelImplCopyWithImpl<_$DeliveryTypeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryTypeModelImplToJson(
      this,
    );
  }
}

abstract class _DeliveryTypeModel implements DeliveryTypeModel {
  const factory _DeliveryTypeModel(
          {@JsonKey(name: 'TYP_NM') required final String title,
          @JsonKey(name: 'TYP_NO') required final String typeNo}) =
      _$DeliveryTypeModelImpl;

  factory _DeliveryTypeModel.fromJson(Map<String, dynamic> json) =
      _$DeliveryTypeModelImpl.fromJson;

  @override
  @JsonKey(name: 'TYP_NM')
  String get title;
  @override
  @JsonKey(name: 'TYP_NO')
  String get typeNo;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryTypeModelImplCopyWith<_$DeliveryTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
