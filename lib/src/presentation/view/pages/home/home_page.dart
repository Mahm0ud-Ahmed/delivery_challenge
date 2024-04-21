import 'package:delivery_challenge/src/core/utils/layout/responsive_layout.dart';
import 'package:flutter/material.dart';

import 'widgets/body_home.dart';
import 'widgets/header_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      showAppBar: false,
      isPadding: false,
      builder: (context, info) {
        return DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                HeaderHome(
                  tabController: tabController,
                ),
              ];
            },
            body: BodyHome(
              info: info,
              tabController: tabController,
            ),
          ),
        );
      },
    );
  }
}
