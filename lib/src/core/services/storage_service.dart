// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:shared_preferences/shared_preferences.dart';

// Project imports:
import '../utils/app_logger.dart';
import 'service_interface.dart';

class StorageService implements ServiceInterface {
  @override
  String get name => 'Shared Preferences Service';

  SharedPreferences? _preferences;

  @override
  Future initializeService() async {
    _preferences = await SharedPreferences.getInstance();

    AppLogger.logDebug('$name Success initialization');
    return _preferences;
  }

  Future<Set<String>> keys() async {
    return _preferences!.getKeys();
  }

  Future<bool> has(String key) async {
    return _preferences!.containsKey(key);
  }

  // Removing
  Future<bool> clear() async {
    return await _preferences!.clear();
  }

  Future<bool> remove(String key) async {
    return await _preferences!.remove(key);
  }

  // saving
  Future<bool> saveBool(String key, bool value) async {
    return await _preferences!.setBool(key, value);
  }

  Future<bool> saveString(String key, String value) async {
    return await _preferences!.setString(key, value);
  }

  Future<bool> saveInt(String key, int value) async {
    return await _preferences!.setInt(key, value);
  }

  Future<bool> saveDouble(String key, double value) async {
    return await _preferences!.setDouble(key, value);
  }

  Future<bool> saveList(String key, List<String> value) async {
    return await _preferences!.setStringList(key, value);
  }

  ///for any get operation from data storage service it's the caller responsibility to handle null cases
  bool? getBool(String name) {
    try {
      return _preferences!.getBool(name);
    } on Exception catch (error) {
      if (kDebugMode) {
        print(error.toString());
      }
    }
    return null;
  }

  String? getString(String name) {
    try {
      return _preferences!.getString(name);
    } on Exception catch (error) {
      if (kDebugMode) {
        print(error.toString());
      }
    }
    return null;
  }

  int? getInt(String name) {
    try {
      return _preferences!.getInt(name);
    } on Exception catch (error) {
      if (kDebugMode) {
        print(error.toString());
      }
    }
    return null;
  }

  double? getDouble(String name) {
    try {
      return _preferences!.getDouble(name);
    } on Exception catch (error) {
      if (kDebugMode) {
        print(error.toString());
      }
    }
    return null;
  }

  List<String>? getList(String name) {
    try {
      return _preferences!.getStringList(name);
    } on Exception catch (error) {
      if (kDebugMode) {
        print(error.toString());
      }
    }
    return null;
  }

  Set<String> getKeys() {
    return _preferences!.getKeys();
  }

  // singleton
  StorageService.init();
  static StorageService? _instance;
  factory StorageService() => _instance ??= StorageService.init();
}
