import 'package:delivery_challenge/src/core/config/injector.dart';
import 'package:delivery_challenge/src/core/services/storage_service.dart';
import 'package:delivery_challenge/src/core/utils/extension.dart';
import 'package:flutter/material.dart';

import '../../../../../core/config/assets/assets.gen.dart';
import '../../../../../core/utils/constant.dart';
import '../../../common/custom_app_bar.dart';
import '../../../common/image_widget.dart';
import '../../../common/text_widget.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    String userName = injector<StorageService>().getString(kUserName) ?? '';
    return FlexibleSpaceBar(
      background: CustomAppBar(
        color: kSecondColor,
        positionTop: 72,
        iconColor: kSecondColor,
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<OutlinedBorder>(const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          )),
        ),
        leadingWidget: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              text: userName.split(' ').first,
              style: context.headlineS?.copyWith(color: kMainColor, fontWeight: FontWeight.w500),
            ),
            TextWidget(
              text: userName.split(' ')[1],
              style: context.headlineS?.copyWith(color: kMainColor),
            ),
          ],
        ),
        otherWidget: PositionedDirectional(
          bottom: 50,
          start: 0,
          end: -140,
          child: ImageWidget(
            image: Assets.images.deliveryman,
            height: 120,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
