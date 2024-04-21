// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryStatusModelImpl _$$DeliveryStatusModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveryStatusModelImpl(
      statues: (json['DeliveryStatusTypes'] as List<dynamic>)
          .map((e) => DeliveryTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DeliveryStatusModelImplToJson(
        _$DeliveryStatusModelImpl instance) =>
    <String, dynamic>{
      'DeliveryStatusTypes': instance.statues.map((e) => e.toJson()).toList(),
    };
