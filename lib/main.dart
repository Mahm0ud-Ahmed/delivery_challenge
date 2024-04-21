import 'package:delivery_challenge/src/core/services/language_manager.dart';
import 'package:delivery_challenge/src/presentation/view/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'src/core/config/injector.dart';
import 'src/core/config/l10n/generated/l10n.dart';
import 'src/core/utils/theme_manager.dart';

void main() async {
  await initializeDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: LanguageManager(),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: S.current.app_name,
            theme: ThemeManager.myTheme,
            themeMode: ThemeMode.light,
            localizationsDelegates: const [
              S.delegate,
              AppLocalizationDelegate(),
              GlobalWidgetsLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            locale: LanguageManager.getLocal,
            supportedLocales: S.delegate.supportedLocales,
            home: const SplashPage(),
          );
        });
  }
}
