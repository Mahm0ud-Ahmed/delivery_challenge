// Flutter imports:
import 'package:flutter/material.dart';

class CustomPadding extends StatelessWidget {
  final Widget child;
  final double? start;
  final double? end;
  final double? top;
  final double? bottom;
  const CustomPadding({
    super.key,
    required this.child,
    this.start = 0.0,
    this.end = 0.0,
    this.top = 0.0,
    this.bottom = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: start ?? 0.0,
        end: end ?? 0.0,
        top: top ?? 0.0,
        bottom: bottom ?? 0.0,
      ),
      child: child,
    );
  }
}
