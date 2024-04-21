// Flutter imports:
import 'package:delivery_challenge/src/core/utils/constant.dart';
import 'package:flutter/material.dart';

import '../config/l10n/generated/l10n.dart';
import 'storage_service.dart';

// Project imports:

class LanguageManager extends ChangeNotifier {
  static Locale? _locale;

  void load() {
    String languageApp = getLanguagePlatform();
    // String? countryCode = StorageService().getString(kLocaleCountryCode);
    _locale = Locale(languageApp);

    S.load(_locale!);
    notifyListeners();
  }

  String getLanguagePlatform() {
    String? language = StorageService().getString(kLanguage);
    if (language != null) {
      return language;
    } else {
      return language = 'en';
    }
  }

  Future<bool> saveLanguage(Locale newLocale) async {
    bool result = await _saveCurrentLang(newLocale);
    _locale = newLocale;
    S.load(newLocale);
    notifyListeners();
    return result;
  }

  Future<bool> _saveCurrentLang(Locale newLocale) async {
    return await StorageService().saveString(kLanguage, newLocale.languageCode);
  }

  static Locale? get getLocal => _locale;

  static LanguageManager? _instance;
  LanguageManager._init();
  factory LanguageManager() => _instance ??= LanguageManager._init();
}
