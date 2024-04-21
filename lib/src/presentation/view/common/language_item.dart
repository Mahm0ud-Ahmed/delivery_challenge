import 'package:delivery_challenge/src/core/utils/extension.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/constant.dart';
import 'image_widget.dart';
import 'text_widget.dart';

class LanguageItem extends StatelessWidget {
  final dynamic flag;
  final String language;
  final String subTitle;
  final VoidCallback onTap;
  final bool isSelected;

  const LanguageItem({
    super.key,
    this.flag,
    required this.language,
    required this.subTitle,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          height: 56,
          width: 150,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: isSelected ? const Color(0xff39A238) : Colors.grey),
              color: isSelected ? const Color(0xffCBFFCB) : kMainColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ImageWidget(image: flag, width: 32),
                  8.w,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(text: language, style: context.labelM?.copyWith(fontWeight: FontWeight.w600)),
                      TextWidget(text: subTitle, style: context.labelS),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
