import 'package:delivery_challenge/src/core/config/assets/assets.gen.dart';
import 'package:delivery_challenge/src/core/utils/extension.dart';
import 'package:delivery_challenge/src/presentation/view/common/image_widget.dart';
import 'package:delivery_challenge/src/presentation/view/common/text_widget.dart';
import 'package:delivery_challenge/src/presentation/view/pages/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/config/l10n/generated/l10n.dart';
import '../../../../../data/models/delivery_bills_model.dart';
import '../../../../view_model/blocs/data_bloc/api_data_bloc.dart';
import '../../../../view_model/blocs/data_bloc/api_data_state.dart';
import 'delivery_item.dart';

class DeliveryBillsList extends StatelessWidget {
  final ApiDataBloc<DeliveryBillsModel> deliveryBloc;
  final HomeController controller;

  const DeliveryBillsList({
    super.key,
    required this.deliveryBloc,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          sliver: BlocBuilder<ApiDataBloc<DeliveryBillsModel>, ApiDataState<DeliveryBillsModel>>(
            bloc: deliveryBloc,
            builder: (context, state) {
              return state.maybeMap(
                loading: (_) => const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())),
                success: (data) {
                  if (data.data != null && data.data!.deliveryBills!.isNotEmpty) {
                    return SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return DeliveryItem(
                            bill: data.data!.deliveryBills![index],
                            controller: controller,
                          );
                        },
                        childCount: data.data?.deliveryBills!.length,
                      ),
                    );
                  }
                  return Column(
                    children: [
                      (context.sizeSide.smallSide * .1).h,
                      ImageWidget(image: Assets.images.icEmptyorder),
                      (context.sizeSide.smallSide * .05).h,
                      TextWidget(text: S.of(context).no_item_found_title),
                      (context.sizeSide.smallSide * .02).h,
                      TextWidget(text: S.of(context).no_item_found_subtitle),
                    ],
                  );
                },
                orElse: () => const SliverToBoxAdapter(child: SizedBox.shrink()),
              );
            },
          ),
        ),
      ],
    );
  }
}
