// Flutter imports:
import 'package:delivery_challenge/src/core/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// Project imports:
import '../../../presentation/view/common/custom_padding.dart';
import '../../../presentation/view/common/text_widget.dart';
import '../constant.dart';
import 'information_page.dart';

class ResponsiveLayout extends StatefulWidget {
  final Function(BuildContext context, InformationPage info) builder;
  final Color? backgroundColor;
  final String? titleAppBar;
  final bool? isPadding;
  final bool? resizeToAvoidBottomInset;
  final bool? showAppBar;
  final bool? showAppBarActions;
  final VoidCallback? onBack;
  final Widget? actionAppBar;
  final Widget? leading;

  const ResponsiveLayout({
    super.key,
    required this.builder,
    this.titleAppBar,
    this.backgroundColor,
    this.isPadding = true,
    this.resizeToAvoidBottomInset = false,
    this.onBack,
    this.showAppBar = true,
    this.showAppBarActions = false,
    this.actionAppBar,
    this.leading,
  }) : assert((showAppBar == true && (showAppBarActions == true && actionAppBar != null)) || showAppBar == false);

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  Widget build(BuildContext context) {
    InformationPage infoPage = InformationPage(
      screenWidth: context.sizeSide.width,
      screenHeight: context.sizeSide.height,
    );

    return PopScope(
      canPop: true,
      onPopInvoked: (isPop) {
        widget.onBack?.call();
      },
      child: SafeArea(
        maintainBottomViewPadding: true,
        top: false,
        bottom: true,
        left: false,
        right: false,
        child: Scaffold(
          resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
          extendBody: true,
          backgroundColor: widget.backgroundColor,
          extendBodyBehindAppBar: true,
          appBar: widget.showAppBar!
              ? PreferredSize(
                  preferredSize: const Size.fromHeight(150),
                  child: AppBar(
                    centerTitle: false,
                    backgroundColor: kMainColor,
                    toolbarHeight: 150,
                    scrolledUnderElevation: 30,
                    title: widget.titleAppBar != null ? TextWidget(text: widget.titleAppBar!) : null,
                    actions: widget.showAppBarActions! ? [widget.actionAppBar!] : null,
                  ),
                )
              : null,
          body: SafeArea(
            maintainBottomViewPadding: true,
            top: false,
            child: SizedBox(
              height: infoPage.screenHeight,
              width: infoPage.screenWidth,
              child: CustomPadding(
                  top: widget.isPadding! ? infoPage.screenWidth * (context.orientationInfo.isPortrait ? 0.03 : 0.01) : 0.0,
                  start: widget.isPadding! ? infoPage.screenWidth * 0.03 : 0.0,
                  end: widget.isPadding! ? infoPage.screenWidth * 0.03 : 0.0,
                  bottom: !widget.resizeToAvoidBottomInset! ? context.viewInsets.bottom : null,
                  child: Builder(
                    builder: (context) {
                      infoPage = infoPage.copyWith(context: context);
                      return widget.builder(context, infoPage);
                    },
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
