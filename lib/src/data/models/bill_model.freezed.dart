// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BillModel _$BillModelFromJson(Map<String, dynamic> json) {
  return _BillModel.fromJson(json);
}

/// @nodoc
mixin _$BillModel {
  @JsonKey(name: 'BILL_AMT')
  String get billAmt => throw _privateConstructorUsedError;
  @JsonKey(name: 'BILL_DATE')
  String get billDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'BILL_SRL')
  String get billSrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'BILL_TYPE')
  String get billType => throw _privateConstructorUsedError;
  @JsonKey(name: 'DLVRY_STATUS_FLG')
  String get deliveryStatusFlag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillModelCopyWith<BillModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillModelCopyWith<$Res> {
  factory $BillModelCopyWith(BillModel value, $Res Function(BillModel) then) =
      _$BillModelCopyWithImpl<$Res, BillModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'BILL_AMT') String billAmt,
      @JsonKey(name: 'BILL_DATE') String billDate,
      @JsonKey(name: 'BILL_SRL') String billSrl,
      @JsonKey(name: 'BILL_TYPE') String billType,
      @JsonKey(name: 'DLVRY_STATUS_FLG') String deliveryStatusFlag});
}

/// @nodoc
class _$BillModelCopyWithImpl<$Res, $Val extends BillModel>
    implements $BillModelCopyWith<$Res> {
  _$BillModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billAmt = null,
    Object? billDate = null,
    Object? billSrl = null,
    Object? billType = null,
    Object? deliveryStatusFlag = null,
  }) {
    return _then(_value.copyWith(
      billAmt: null == billAmt
          ? _value.billAmt
          : billAmt // ignore: cast_nullable_to_non_nullable
              as String,
      billDate: null == billDate
          ? _value.billDate
          : billDate // ignore: cast_nullable_to_non_nullable
              as String,
      billSrl: null == billSrl
          ? _value.billSrl
          : billSrl // ignore: cast_nullable_to_non_nullable
              as String,
      billType: null == billType
          ? _value.billType
          : billType // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryStatusFlag: null == deliveryStatusFlag
          ? _value.deliveryStatusFlag
          : deliveryStatusFlag // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillModelImplCopyWith<$Res>
    implements $BillModelCopyWith<$Res> {
  factory _$$BillModelImplCopyWith(
          _$BillModelImpl value, $Res Function(_$BillModelImpl) then) =
      __$$BillModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'BILL_AMT') String billAmt,
      @JsonKey(name: 'BILL_DATE') String billDate,
      @JsonKey(name: 'BILL_SRL') String billSrl,
      @JsonKey(name: 'BILL_TYPE') String billType,
      @JsonKey(name: 'DLVRY_STATUS_FLG') String deliveryStatusFlag});
}

/// @nodoc
class __$$BillModelImplCopyWithImpl<$Res>
    extends _$BillModelCopyWithImpl<$Res, _$BillModelImpl>
    implements _$$BillModelImplCopyWith<$Res> {
  __$$BillModelImplCopyWithImpl(
      _$BillModelImpl _value, $Res Function(_$BillModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billAmt = null,
    Object? billDate = null,
    Object? billSrl = null,
    Object? billType = null,
    Object? deliveryStatusFlag = null,
  }) {
    return _then(_$BillModelImpl(
      billAmt: null == billAmt
          ? _value.billAmt
          : billAmt // ignore: cast_nullable_to_non_nullable
              as String,
      billDate: null == billDate
          ? _value.billDate
          : billDate // ignore: cast_nullable_to_non_nullable
              as String,
      billSrl: null == billSrl
          ? _value.billSrl
          : billSrl // ignore: cast_nullable_to_non_nullable
              as String,
      billType: null == billType
          ? _value.billType
          : billType // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryStatusFlag: null == deliveryStatusFlag
          ? _value.deliveryStatusFlag
          : deliveryStatusFlag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillModelImpl implements _BillModel {
  const _$BillModelImpl(
      {@JsonKey(name: 'BILL_AMT') required this.billAmt,
      @JsonKey(name: 'BILL_DATE') required this.billDate,
      @JsonKey(name: 'BILL_SRL') required this.billSrl,
      @JsonKey(name: 'BILL_TYPE') required this.billType,
      @JsonKey(name: 'DLVRY_STATUS_FLG') required this.deliveryStatusFlag});

  factory _$BillModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillModelImplFromJson(json);

  @override
  @JsonKey(name: 'BILL_AMT')
  final String billAmt;
  @override
  @JsonKey(name: 'BILL_DATE')
  final String billDate;
  @override
  @JsonKey(name: 'BILL_SRL')
  final String billSrl;
  @override
  @JsonKey(name: 'BILL_TYPE')
  final String billType;
  @override
  @JsonKey(name: 'DLVRY_STATUS_FLG')
  final String deliveryStatusFlag;

  @override
  String toString() {
    return 'BillModel(billAmt: $billAmt, billDate: $billDate, billSrl: $billSrl, billType: $billType, deliveryStatusFlag: $deliveryStatusFlag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillModelImpl &&
            (identical(other.billAmt, billAmt) || other.billAmt == billAmt) &&
            (identical(other.billDate, billDate) ||
                other.billDate == billDate) &&
            (identical(other.billSrl, billSrl) || other.billSrl == billSrl) &&
            (identical(other.billType, billType) ||
                other.billType == billType) &&
            (identical(other.deliveryStatusFlag, deliveryStatusFlag) ||
                other.deliveryStatusFlag == deliveryStatusFlag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, billAmt, billDate, billSrl, billType, deliveryStatusFlag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BillModelImplCopyWith<_$BillModelImpl> get copyWith =>
      __$$BillModelImplCopyWithImpl<_$BillModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillModelImplToJson(
      this,
    );
  }
}

abstract class _BillModel implements BillModel {
  const factory _BillModel(
      {@JsonKey(name: 'BILL_AMT') required final String billAmt,
      @JsonKey(name: 'BILL_DATE') required final String billDate,
      @JsonKey(name: 'BILL_SRL') required final String billSrl,
      @JsonKey(name: 'BILL_TYPE') required final String billType,
      @JsonKey(name: 'DLVRY_STATUS_FLG')
      required final String deliveryStatusFlag}) = _$BillModelImpl;

  factory _BillModel.fromJson(Map<String, dynamic> json) =
      _$BillModelImpl.fromJson;

  @override
  @JsonKey(name: 'BILL_AMT')
  String get billAmt;
  @override
  @JsonKey(name: 'BILL_DATE')
  String get billDate;
  @override
  @JsonKey(name: 'BILL_SRL')
  String get billSrl;
  @override
  @JsonKey(name: 'BILL_TYPE')
  String get billType;
  @override
  @JsonKey(name: 'DLVRY_STATUS_FLG')
  String get deliveryStatusFlag;
  @override
  @JsonKey(ignore: true)
  _$$BillModelImplCopyWith<_$BillModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
