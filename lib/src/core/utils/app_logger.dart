// Package imports:
import 'package:logger/logger.dart';

class AppLogger {
  static final Logger _log = initialLogger();

  static Logger initialLogger() {
    return Logger(
      printer: PrettyPrinter(
        methodCount: 0, // number of method calls to be displayed
        errorMethodCount: 8, // number of method calls if stacktrace is provided
        lineLength: 120, // width of the output
        colors: true, // Colorful log messages
        printEmojis: true, // Print an emoji for each log message
        printTime: false, // Should each log print contain a timestamp
      ),
    );
  }

  static logInfo(dynamic message) {
    _log.i(message);
  }

  static logDebug(dynamic message) {
    _log.d(message);
  }

  static logWarning(dynamic message) {
    _log.w(message);
  }

  static logError(dynamic message) {
    _log.e(message);
  }

  static logVerbose(dynamic message) {
    _log.t(message);
  }
}
