import 'package:delivery_challenge/src/core/config/injector.dart';
import 'package:delivery_challenge/src/core/utils/extension.dart';
import 'package:delivery_challenge/src/core/utils/layout/responsive_layout.dart';
import 'package:delivery_challenge/src/presentation/view/common/image_widget.dart';
import 'package:delivery_challenge/src/presentation/view/pages/home/home_page.dart';
import 'package:delivery_challenge/src/presentation/view/pages/login/login_page.dart';
import 'package:flutter/material.dart';

import '../../../../core/config/assets/assets.gen.dart';
import '../../../../core/services/storage_service.dart';
import '../../../../core/utils/constant.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      String? userId = injector<StorageService>().getString(kUserId);
      context.replacePage(const LoginPage() );
      context.replacePage(userId != null ? const HomePage(): const LoginPage() );
    });
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      showAppBar: false,
      isPadding: false,
      backgroundColor: const Color(0xffE9FAFF),
      builder: (context, info) {
        return Stack(
          children: [
            Positioned(
              bottom: info.screenHeight * .1,
              left: 0,
              right: 0,
              child: ImageWidget(image: Assets.images.buildings, fit: BoxFit.fill,),
            ),
            Positioned(
              bottom: info.screenHeight * .05,
              left: 0,
              right: 0,
              child: ImageWidget(
                image: Assets.images.bicycle,
                fit: BoxFit.contain,
              ),
            ),
            Center(child: ImageWidget(image: Assets.images.logo)),
          ],
        );
      },
    );
  }
}
