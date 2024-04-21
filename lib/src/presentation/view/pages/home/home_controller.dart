import 'package:delivery_challenge/src/core/utils/constant.dart';
import 'package:flutter/material.dart' show Color, Colors;

import '../../../../core/config/l10n/generated/l10n.dart';
import '../../../../data/models/delivery_status_model.dart';

class HomeController {
  late final DeliveryStatusModel statues;

  Color getColorStatus(String status) {
    switch (status) {
      case '0':
        return const Color(0xff29D40F);
      case '1':
        return kSecondColor;
      case '2':
        return Colors.grey;
      case '3':
        return kThirdColor;
      default:
        return kFourthColor;
    }
  }

  String getStatus(String status) {
    if (status == '0') {
      return S.current.home_page_tab_bar_new;
    } else {
      return statues.statues.firstWhere((element) => element.typeNo == status).title;
    }
  }
}
