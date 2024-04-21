import 'package:bloc/bloc.dart';
import 'package:delivery_challenge/src/core/services/language_manager.dart';
import 'package:flutter/material.dart' show WidgetsFlutterBinding;
import 'package:get_it/get_it.dart';
import 'package:delivery_challenge/src/core/utils/theme_manager.dart';

import '../../data/remote/dio_api_service.dart';
import '../../presentation/view_model/blocs/assistance/my_bloc_observer.dart';
import '../services/dio_service.dart';
import '../services/storage_service.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  WidgetsFlutterBinding.ensureInitialized();
  injector.registerSingleton<StorageService>(StorageService());
  await injector<StorageService>().initializeService();

  injector.registerSingleton<DioService>(DioService());
  await injector<DioService>().initializeService();

  injector.registerSingleton<DioApiService>(DioApiService(dio: injector<DioService>().dio));

  injector.registerSingleton<LanguageManager>(LanguageManager());
  injector<LanguageManager>().load();
  injector.registerSingleton<ThemeManager>(ThemeManager());

  Bloc.observer = MyBlocObserver();
}
