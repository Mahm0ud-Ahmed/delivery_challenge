import 'package:delivery_challenge/src/core/utils/layout/responsive_layout.dart';
import 'package:delivery_challenge/src/presentation/view/pages/login/widgets/app_bar_widget.dart';
import 'package:delivery_challenge/src/presentation/view_model/blocs/data_bloc/api_data_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widgets/body_login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final ApiDataBloc<Map<String, dynamic>> userLoginBloc;

  @override
  void initState() {
    super.initState();
    userLoginBloc = ApiDataBloc<Map<String, dynamic>>();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      showAppBar: false,
      isPadding: false,
      builder: (context, info) {
        return CustomScrollView(
          slivers: [
            const AppBarWidget(),
            BodyLogin(userLoginBloc: userLoginBloc),
          ],
        );
      },
    );
  }
}
