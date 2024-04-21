import 'package:delivery_challenge/src/data/models/bill_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constant.dart';
import '../home_controller.dart';
import 'base_info_delivery.dart';
import 'details_delivery.dart';

class DeliveryItem extends StatelessWidget {
  final BillModel bill;
  final HomeController controller;
  const DeliveryItem({super.key, required this.bill, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 116,
      child: Card(
        surfaceTintColor: kMainColor,
        color: kMainColor,
        elevation: 4,
        child: Row(
          children: [
            BaseInfoDelivery(bill: bill, controller: controller),
            DetailsDelivery(cardCard: controller.getColorStatus(bill.deliveryStatusFlag)),
          ],
        ),
      ),
    );
  }
}
