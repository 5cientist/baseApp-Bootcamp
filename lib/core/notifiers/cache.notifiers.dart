import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheNotifier extends ChangeNotifier {
  //writeCache
  //ReadCache
  //DeleteCache

  Future writeCache({
    required String key,
    required String value,
  }) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.setString(key, value);
    notifyListeners();
  }

  Future readCache({required String key}) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    var cache = sharedPreferences.getString(key);
    notifyListeners();
    return cache;
  }

  Future deleteCache({required String key}) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.remove(key);
    notifyListeners();
  }
}
