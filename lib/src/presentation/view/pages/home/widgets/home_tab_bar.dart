import 'package:delivery_challenge/src/core/utils/extension.dart';
import 'package:flutter/material.dart';

import '../../../../../core/config/l10n/generated/l10n.dart';
import '../../../../../core/utils/constant.dart';
import '../../../common/text_widget.dart';

class HomeTabBar extends StatefulWidget {
  final TabController tabController;
  const HomeTabBar({super.key, required this.tabController});

  @override
  State<HomeTabBar> createState() => _HomeTabBarState();
}

class _HomeTabBarState extends State<HomeTabBar> {
  late final ValueNotifier<int> _tabIndex;

  void _onTap() {
    _tabIndex.value = widget.tabController.index;
  }

  @override
  void initState() {
    super.initState();
    _tabIndex = ValueNotifier<int>(0);

    widget.tabController.addListener(_onTap);
  }

  @override
  void dispose() {
    _tabIndex.dispose();
    widget.tabController.removeListener(_onTap);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.sizeSide.width,
      child: ColoredBox(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(
            left: context.sizeSide.smallSide * .15,
            right: context.sizeSide.smallSide * .15,
            top: 8,
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(context.sizeSide.smallSide),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  spreadRadius: 4,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: ValueListenableBuilder(
                valueListenable: _tabIndex,
                builder: (context, value, child) {
                  return TabBar(
                    controller: widget.tabController,
                    indicatorSize: TabBarIndicatorSize.tab,
                    overlayColor: MaterialStateProperty.resolveWith((states) => Colors.transparent),
                    indicator: BoxDecoration(
                      color: kSecondColor,
                      borderRadius: BorderRadius.circular(context.sizeSide.smallSide),
                    ),
                    dividerColor: Colors.transparent,
                    tabs: [
                      Tab(
                          child: TextWidget(
                        text: S.of(context).home_page_tab_bar_new,
                        style: context.bodyM?.copyWith(color: value == 0 ? kMainColor : kSecondColor),
                      )),
                      Tab(
                          child: TextWidget(
                        text: S.of(context).home_page_tab_bar_others,
                        style: context.bodyM?.copyWith(color: value == 1 ? kMainColor : kSecondColor),
                      )),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }
}
