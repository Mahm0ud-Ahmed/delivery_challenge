import 'package:delivery_challenge/src/core/utils/extension.dart';
import 'package:flutter/material.dart';

import '../../../../../core/config/l10n/generated/l10n.dart';
import '../../../../../core/utils/constant.dart';
import '../../../common/text_widget.dart';

class DetailsDelivery extends StatelessWidget {
  final Color cardCard;
  const DetailsDelivery({super.key, required this.cardCard});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 62,
      height: 120,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: cardCard,
          borderRadius: const BorderRadiusDirectional.only(
            topEnd: Radius.circular(8),
            bottomEnd: Radius.circular(8),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextWidget(
              text: S.of(context).home_page_details,
              style: context.labelS?.copyWith(color: kMainColor),
              textAlign: TextAlign.center,
            ),
            4.h,
            const Icon(
              Icons.arrow_forward_ios,
              color: kMainColor,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
