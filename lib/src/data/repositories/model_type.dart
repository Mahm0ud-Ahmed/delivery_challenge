// Project imports:
import 'package:delivery_challenge/src/data/models/bill_model.dart';

import '../models/delivery_bills_model.dart';
import '../models/delivery_status_model.dart';
import '../models/delivery_type_model.dart';

class ModelType {
  static dynamic getParseData<T>(Object? json) {
    if (json != null) {
      if (json is String || json is int || json is double || json is bool || json is List) {
        return json;
      } else if (json is Map<String, dynamic>) {
        var modelFactory = getModel<T>();
        if (modelFactory != null) {
          return modelFactory.call(json);
        }
        return json;
      }
    }
    return null;
  }

  static Function? getModel<T>() {
    switch (T) {
      case const (BillModel):
        return BillModel.fromJson;
      case const (DeliveryBillsModel):
        return DeliveryBillsModel.fromJson;
      case const (DeliveryTypeModel):
        return DeliveryTypeModel.fromJson;
      case const (DeliveryStatusModel):
        return DeliveryStatusModel.fromJson;
      default:
        return null;
    }
  }
}
