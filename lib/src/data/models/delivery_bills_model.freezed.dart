// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_bills_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryBillsModel _$DeliveryBillsModelFromJson(Map<String, dynamic> json) {
  return _DeliveryBillsModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryBillsModel {
  @JsonKey(name: 'DeliveryBills')
  List<BillModel>? get deliveryBills => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryBillsModelCopyWith<DeliveryBillsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryBillsModelCopyWith<$Res> {
  factory $DeliveryBillsModelCopyWith(
          DeliveryBillsModel value, $Res Function(DeliveryBillsModel) then) =
      _$DeliveryBillsModelCopyWithImpl<$Res, DeliveryBillsModel>;
  @useResult
  $Res call({@JsonKey(name: 'DeliveryBills') List<BillModel>? deliveryBills});
}

/// @nodoc
class _$DeliveryBillsModelCopyWithImpl<$Res, $Val extends DeliveryBillsModel>
    implements $DeliveryBillsModelCopyWith<$Res> {
  _$DeliveryBillsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryBills = freezed,
  }) {
    return _then(_value.copyWith(
      deliveryBills: freezed == deliveryBills
          ? _value.deliveryBills
          : deliveryBills // ignore: cast_nullable_to_non_nullable
              as List<BillModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryBillsModelImplCopyWith<$Res>
    implements $DeliveryBillsModelCopyWith<$Res> {
  factory _$$DeliveryBillsModelImplCopyWith(_$DeliveryBillsModelImpl value,
          $Res Function(_$DeliveryBillsModelImpl) then) =
      __$$DeliveryBillsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'DeliveryBills') List<BillModel>? deliveryBills});
}

/// @nodoc
class __$$DeliveryBillsModelImplCopyWithImpl<$Res>
    extends _$DeliveryBillsModelCopyWithImpl<$Res, _$DeliveryBillsModelImpl>
    implements _$$DeliveryBillsModelImplCopyWith<$Res> {
  __$$DeliveryBillsModelImplCopyWithImpl(_$DeliveryBillsModelImpl _value,
      $Res Function(_$DeliveryBillsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryBills = freezed,
  }) {
    return _then(_$DeliveryBillsModelImpl(
      deliveryBills: freezed == deliveryBills
          ? _value._deliveryBills
          : deliveryBills // ignore: cast_nullable_to_non_nullable
              as List<BillModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryBillsModelImpl implements _DeliveryBillsModel {
  const _$DeliveryBillsModelImpl(
      {@JsonKey(name: 'DeliveryBills')
      final List<BillModel>? deliveryBills = const []})
      : _deliveryBills = deliveryBills;

  factory _$DeliveryBillsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryBillsModelImplFromJson(json);

  final List<BillModel>? _deliveryBills;
  @override
  @JsonKey(name: 'DeliveryBills')
  List<BillModel>? get deliveryBills {
    final value = _deliveryBills;
    if (value == null) return null;
    if (_deliveryBills is EqualUnmodifiableListView) return _deliveryBills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DeliveryBillsModel(deliveryBills: $deliveryBills)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryBillsModelImpl &&
            const DeepCollectionEquality()
                .equals(other._deliveryBills, _deliveryBills));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_deliveryBills));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryBillsModelImplCopyWith<_$DeliveryBillsModelImpl> get copyWith =>
      __$$DeliveryBillsModelImplCopyWithImpl<_$DeliveryBillsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryBillsModelImplToJson(
      this,
    );
  }
}

abstract class _DeliveryBillsModel implements DeliveryBillsModel {
  const factory _DeliveryBillsModel(
      {@JsonKey(name: 'DeliveryBills')
      final List<BillModel>? deliveryBills}) = _$DeliveryBillsModelImpl;

  factory _DeliveryBillsModel.fromJson(Map<String, dynamic> json) =
      _$DeliveryBillsModelImpl.fromJson;

  @override
  @JsonKey(name: 'DeliveryBills')
  List<BillModel>? get deliveryBills;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryBillsModelImplCopyWith<_$DeliveryBillsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
