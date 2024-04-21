import 'package:delivery_challenge/src/core/config/injector.dart';
import 'package:delivery_challenge/src/core/services/language_manager.dart';
import 'package:delivery_challenge/src/core/utils/extension.dart';
import 'package:flutter/material.dart';

import '../../../core/config/assets/assets.gen.dart';
import '../../../core/config/l10n/generated/l10n.dart';
import '../../../core/utils/constant.dart';
import 'language_item.dart';
import 'text_widget.dart';

class AlertDialogBuilder extends StatefulWidget {
  const AlertDialogBuilder({super.key});

  @override
  State<AlertDialogBuilder> createState() => _AlertDialogBuilderState();
}

class _AlertDialogBuilderState extends State<AlertDialogBuilder> {
  late ValueNotifier<String> _selectedLanguage;

  @override
  void initState() {
    super.initState();
    _selectedLanguage = ValueNotifier<String>(LanguageManager.getLocal?.languageCode ?? 'en');

    currentLanguage = languages.firstWhere((element) => element['code'] == _selectedLanguage.value);
  }

  @override
  void dispose() {
    _selectedLanguage.dispose();
    super.dispose();
  }

  Map<String, Object>? currentLanguage;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: kFifthColor,
      surfaceTintColor: kFifthColor,
      title: TextWidget(
        text: S.of(context).alert_dialog_title,
        style: context.bodyS?.copyWith(fontWeight: FontWeight.w900),
      ),
      content: ValueListenableBuilder(
        valueListenable: _selectedLanguage,
        builder: (context, value, child) {
          return Row(
            children: List.generate(
              languages.length,
              (index) => Flexible(
                child: LanguageItem(
                  flag: languages[index]['flag'],
                  isSelected: value == languages[index]['code'].toString(),
                  language: languages[index]['language'].toString(),
                  subTitle: languages[index]['subTitle'].toString(),
                  onTap: () {
                    currentLanguage = languages[index];
                    _selectedLanguage.value = currentLanguage!['code'].toString();
                  },
                ),
              ),
            ),
          );
        },
      ),
      actions: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: kSecondColor,
              padding: const EdgeInsets.all(16),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
            onPressed: () async {
              injector<LanguageManager>()
                  .saveLanguage(Locale(currentLanguage!['code'].toString()))
                  .then((value) => context.pop());
            },
            child: ValueListenableBuilder(
                valueListenable: _selectedLanguage,
                builder: (context, value, child) {
                  return TextWidget(
                    text: currentLanguage!['btn_title'].toString(),
                    style: context.bodyM?.copyWith(color: kMainColor),
                  );
                }),
          ),
        )
      ],
    );
  }

  final languages = [
    {
      'flag': Assets.images.enFlag,
      'language': 'English',
      'subTitle': 'English',
      'code': 'en',
      'btn_title': 'Apply',
    },
    {
      'flag': Assets.images.arFlag,
      'language': 'العربية',
      'subTitle': 'Arabic',
      'code': 'ar',
      'btn_title': 'تطبيق',
    }
  ];
}
