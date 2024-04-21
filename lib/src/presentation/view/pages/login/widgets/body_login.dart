import 'package:delivery_challenge/src/core/utils/api_info.dart';
import 'package:delivery_challenge/src/core/utils/enums.dart';
import 'package:delivery_challenge/src/core/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/config/assets/assets.gen.dart';
import '../../../../../core/config/injector.dart';
import '../../../../../core/config/l10n/generated/l10n.dart';
import '../../../../../core/services/storage_service.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../view_model/blocs/data_bloc/api_data_bloc.dart';
import '../../../../view_model/blocs/data_bloc/api_data_state.dart';
import '../../../common/generic_text_field.dart';
import '../../../common/image_widget.dart';
import '../../../common/text_widget.dart';
import '../../home/home_page.dart';

class BodyLogin extends StatefulWidget {
  final ApiDataBloc<Map<String, dynamic>> userLoginBloc;
  const BodyLogin({super.key, required this.userLoginBloc});

  @override
  State<BodyLogin> createState() => _BodyLoginState();
}

class _BodyLoginState extends State<BodyLogin> {
  late final TextEditingController _userIdController;
  late final TextEditingController _passwordController;
  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    _userIdController = TextEditingController();
    _passwordController = TextEditingController();
    _formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          BlocListener<ApiDataBloc<Map<String, dynamic>>, ApiDataState<Map<String, dynamic>>>(
            bloc: widget.userLoginBloc,
            listener: (context, state) {
              state.mapOrNull(
                success: (state) {
                  if (state.data != null && state.data!.isNotEmpty) {
                    injector<StorageService>().saveString(kUserId, _userIdController.text);
                    injector<StorageService>().saveString(kUserName, state.data!['DeliveryName']);
                    context.replacePage(const HomePage());
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: TextWidget(text: state.response.result['ErrMsg'], style: context.bodyM?.copyWith(color: kMainColor),),
                      ),
                    );
                  }
                },
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    (context.sizeSide.height * .02).h,
                    TextWidget(
                      text: S.of(context).login_page_headline,
                      style: context.headlineL,
                    ),
                    (context.sizeSide.smallSide * .02).h,
                    TextWidget(
                      text: S.of(context).login_page_sub_headline,
                      style: context.bodyS,
                    ),
                    (context.sizeSide.smallSide * .1).h,
                    GenericTextField(
                      controller: _userIdController,
                      hintText: S.of(context).login_page_user_id_placeholder,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return S.of(context).login_page_user_id_error;
                        }
                        return null;
                      },
                    ),
                    (context.sizeSide.smallSide * .04).h,
                    GenericTextField(
                      controller: _passwordController,
                      hintText: S.of(context).login_page_password_placeholder,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return S.of(context).login_page_password_error;
                        }
                        return null;
                      },
                    ),
                    (context.sizeSide.smallSide * .05).h,
                    Align(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: TextButton(onPressed: () {}, child: TextWidget(text: S.of(context).login_page_show_more)),
                    ),
                    (context.sizeSide.smallSide * .03).h,
                    SizedBox(
                      width: context.sizeSide.width,
                      child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              widget.userLoginBloc.getGeneralData(
                                info: ApiInfo(
                                  endpoint: ApiRoute.login.route,
                                  requestType: ApiRequestType.post,
                                  body: {
                                    'P_DLVRY_NO': _userIdController.text,
                                    'P_PSSWRD': _passwordController.text,
                                  },
                                ),
                              );
                              // context.replacePage(HomePage());
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kSecondColor,
                            padding: const EdgeInsets.all(16),
                          ),
                          child: TextWidget(
                            text: S.of(context).login_page_login_button,
                            style: context.bodyM?.copyWith(color: kMainColor, fontWeight: FontWeight.w600),
                          )),
                    ),
                    (context.sizeSide.height * .05).h,
                    ImageWidget(image: Assets.images.deliveryCar),
                    (context.sizeSide.height * .05).h,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
