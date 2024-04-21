// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BillModelImpl _$$BillModelImplFromJson(Map<String, dynamic> json) =>
    _$BillModelImpl(
      billAmt: json['BILL_AMT'] as String,
      billDate: json['BILL_DATE'] as String,
      billSrl: json['BILL_SRL'] as String,
      billType: json['BILL_TYPE'] as String,
      deliveryStatusFlag: json['DLVRY_STATUS_FLG'] as String,
    );

Map<String, dynamic> _$$BillModelImplToJson(_$BillModelImpl instance) =>
    <String, dynamic>{
      'BILL_AMT': instance.billAmt,
      'BILL_DATE': instance.billDate,
      'BILL_SRL': instance.billSrl,
      'BILL_TYPE': instance.billType,
      'DLVRY_STATUS_FLG': instance.deliveryStatusFlag,
    };
