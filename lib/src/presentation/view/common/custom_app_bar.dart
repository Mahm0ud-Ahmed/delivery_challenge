import 'package:delivery_challenge/src/core/utils/extension.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/constant.dart';
import 'alert_dialog_builder.dart';

class CustomAppBar extends StatelessWidget {
  final Color color;
  final Widget leadingWidget;
  final Widget? otherWidget;
  final double positionTop;
  final ButtonStyle? style;
  final Color? iconColor;

  const CustomAppBar({
    super.key,
    required this.color,
    required this.leadingWidget,
    this.otherWidget,
    required this.positionTop,
    this.style,
    this.iconColor = kMainColor,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Stack(
        children: [
          PositionedDirectional(
            end: -80,
            top: -40,
            child: SizedBox(
              height: context.sizeSide.width * .5,
              width: context.sizeSide.width * .5,
              child: ClipOval(
                child: ColoredBox(color: color),
              ),
            ),
          ),
           if (otherWidget != null) otherWidget!,
          PositionedDirectional(
            bottom: positionTop,
            start: 12,
            end: 12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                leadingWidget,
                IconButton(
                  icon: const Icon(Icons.language, size: 32),
                  color: iconColor,
                  style: style,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => const AlertDialogBuilder(),
                    );
                  },
                )
              ],
            ),
          ),
         
        ],
      ),
    );
  }
}
