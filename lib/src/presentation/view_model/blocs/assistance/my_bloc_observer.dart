// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import '../../../../core/utils/app_logger.dart';

class MyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    AppLogger.logInfo('onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    AppLogger.logVerbose('''Change State --> 
    Bloc Type : ${bloc.runtimeType}, 
    Current State: ${change.currentState.runtimeType} 
    Next State: ${change.nextState.runtimeType}''');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    AppLogger.logWarning('''Bloc Error -->
    Bloc Type : ${bloc.runtimeType}, 
    Error: {$error}''');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    AppLogger.logInfo('onClose -- ${bloc.runtimeType}');
  }
}
