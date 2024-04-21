// ignore_for_file: public_member_api_docs, sort_constructors_first

// Flutter imports:
import 'package:flutter/material.dart' show BuildContext;

class InformationPage {
  final double screenWidth;
  final double screenHeight;
  final BuildContext? context;

  const InformationPage({
    required this.screenWidth,
    required this.screenHeight,
    this.context,
  });

  InformationPage copyWith({
    double? screenWidth,
    double? screenHeight,
    BuildContext? context,
  }) {
    return InformationPage(
      screenWidth: screenWidth ?? this.screenWidth,
      screenHeight: screenHeight ?? this.screenHeight,
      context: context ?? this.context,
    );
  }
}
