// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_bills_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryBillsModelImpl _$$DeliveryBillsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveryBillsModelImpl(
      deliveryBills: (json['DeliveryBills'] as List<dynamic>?)
              ?.map((e) => BillModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DeliveryBillsModelImplToJson(
        _$DeliveryBillsModelImpl instance) =>
    <String, dynamic>{
      'DeliveryBills': instance.deliveryBills?.map((e) => e.toJson()).toList(),
    };
