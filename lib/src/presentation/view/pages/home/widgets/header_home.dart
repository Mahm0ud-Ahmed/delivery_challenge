import 'package:delivery_challenge/src/core/utils/constant.dart';
import 'package:delivery_challenge/src/presentation/view/pages/home/widgets/home_app_bar.dart';
import 'package:delivery_challenge/src/presentation/view/pages/home/widgets/home_tab_bar.dart';
import 'package:flutter/material.dart';

class HeaderHome extends StatelessWidget {
  final TabController tabController;
  const HeaderHome({
    super.key,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      expandedHeight: 150,
      backgroundColor: kThirdColor,
      elevation: 0,
      flexibleSpace: const HomeAppBar(),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(64),
        child: HomeTabBar(
          tabController: tabController,
        ),
      ),
    );
  }
}
