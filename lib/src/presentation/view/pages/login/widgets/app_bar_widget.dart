import 'package:flutter/material.dart';

import '../../../../../core/config/assets/assets.gen.dart';
import '../../../../../core/utils/constant.dart';
import '../../../common/custom_app_bar.dart';
import '../../../common/image_widget.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: kMainColor,
      expandedHeight: 150,
      flexibleSpace: FlexibleSpaceBar(
        background: CustomAppBar(
          color: kThirdColor,
          positionTop: 50,
          leadingWidget: ImageWidget(
            image: Assets.images.logo,
            width: 200,
          ),
        ),
      ),
    );
  }
}
