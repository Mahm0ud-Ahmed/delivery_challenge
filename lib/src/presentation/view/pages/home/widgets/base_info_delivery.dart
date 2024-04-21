// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:delivery_challenge/src/core/utils/extension.dart';

import '../../../../../core/config/l10n/generated/l10n.dart';
import '../../../../../data/models/bill_model.dart';
import '../../../common/text_widget.dart';
import '../home_controller.dart';

class BaseInfoDelivery extends StatelessWidget {
  final BillModel bill;
  final HomeController controller;
  const BaseInfoDelivery({super.key, required this.bill, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 16, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              text: '#${bill.billSrl}',
              style: context.labelS,
            ),
            IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(top: 12, bottom: 8,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _InfoWidget(
                      title: S.of(context).home_page_status,
                      value: controller.getStatus(bill.deliveryStatusFlag),
                      valueColor: controller.getColorStatus(bill.deliveryStatusFlag),
                    ),
                    const VerticalDivider(color: Colors.grey),
                    _InfoWidget(
                      title: S.of(context).home_page_total_price,
                      value: S.of(context).price_order(double.tryParse(double.tryParse(bill.billAmt)!.toStringAsFixed(2))!),
                    ),
                    const VerticalDivider(color: Colors.grey),
                    _InfoWidget(title: S.of(context).home_page_date, value: bill.billDate),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoWidget extends StatelessWidget {
  final String title;
  final String value;
  final Color? valueColor;
  const _InfoWidget({
    required this.title,
    required this.value,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      child: Column(
        children: [
          TextWidget(
            text: title,
            style: context.labelS?.copyWith(color: Colors.grey),
          ),
          8.h,
          Flexible(
              child: TextWidget(
            text: value,
            style: context.bodyS?.copyWith(color: valueColor),
            overflow: TextOverflow.ellipsis,
          )),
        ],
      ),
    );
  }
}
