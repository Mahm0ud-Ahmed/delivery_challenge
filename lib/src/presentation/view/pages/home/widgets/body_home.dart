import 'package:delivery_challenge/src/core/config/injector.dart';
import 'package:delivery_challenge/src/core/services/storage_service.dart';
import 'package:delivery_challenge/src/core/utils/api_info.dart';
import 'package:delivery_challenge/src/core/utils/constant.dart';
import 'package:delivery_challenge/src/core/utils/enums.dart';
import 'package:delivery_challenge/src/presentation/view/pages/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/layout/information_page.dart';
import '../../../../../data/models/delivery_bills_model.dart';
import '../../../../../data/models/delivery_status_model.dart';
import '../../../../view_model/blocs/data_bloc/api_data_bloc.dart';
import '../../../../view_model/blocs/data_bloc/api_data_state.dart';
import 'delivery_bills_list.dart';

class BodyHome extends StatefulWidget {
  final TabController tabController;
  final InformationPage info;
  const BodyHome({
    super.key,
    required this.tabController,
    required this.info,
  });

  @override
  State<BodyHome> createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  late final ApiDataBloc<DeliveryBillsModel> newOrderBloc;
  late final ApiDataBloc<DeliveryBillsModel> otherOrderBloc;
  late final ApiDataBloc<DeliveryStatusModel> statuesDeliveryBloc;

  late final HomeController controller;

  @override
  void initState() {
    super.initState();
    newOrderBloc = ApiDataBloc();
    otherOrderBloc = ApiDataBloc();
    statuesDeliveryBloc = ApiDataBloc()
      ..getGeneralData(
        info: ApiInfo(endpoint: ApiRoute.deliveryStatues.route, requestType: ApiRequestType.post, body: {}),
      );
    controller = HomeController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ApiDataBloc<DeliveryStatusModel>, ApiDataState<DeliveryStatusModel>>(
      bloc: statuesDeliveryBloc,
      listener: (context, state) {
        state.mapOrNull(
          success: (data) {
            controller.statues = data.data!;
            getData();
          },
        );
      },
      child: TabBarView(
        controller: widget.tabController,
        children: [
          DeliveryBillsList(deliveryBloc: newOrderBloc, controller: controller),
          DeliveryBillsList(deliveryBloc: otherOrderBloc, controller: controller),
        ],
      ),
    );
  }

  void getData() {
    newOrderBloc.getGeneralData(
      info: ApiInfo(
        endpoint: ApiRoute.delivery.route,
        requestType: ApiRequestType.post,
        body: {'P_DLVRY_NO': injector<StorageService>().getString(kUserId), 'P_PRCSSD_FLG': '0'},
      ),
    );

    otherOrderBloc.getGeneralData(
      info: ApiInfo(
        endpoint: ApiRoute.delivery.route,
        requestType: ApiRequestType.post,
        body: {'P_DLVRY_NO': injector<StorageService>().getString(kUserId), 'P_PRCSSD_FLG': '1'},
      ),
    );
  }
}
