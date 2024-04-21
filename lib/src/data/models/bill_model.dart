// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill_model.freezed.dart';
part 'bill_model.g.dart';

@freezed
class BillModel with _$BillModel {
  const factory BillModel({
    @JsonKey(name: 'BILL_AMT') required final String billAmt,
    @JsonKey(name: 'BILL_DATE') required final String billDate,
    @JsonKey(name: 'BILL_SRL') required final String billSrl,
    @JsonKey(name: 'BILL_TYPE') required final String billType,
    @JsonKey(name: 'DLVRY_STATUS_FLG') required final String deliveryStatusFlag,
  }) = _BillModel;

  factory BillModel.fromJson(Map<String, dynamic> json) => _$BillModelFromJson(json);
}