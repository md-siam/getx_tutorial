import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsService extends GetxService {
  late SharedPreferences _prefs;
  final counter = 0.obs;

  Future<SettingsService> init() async {
    debugPrint('$runtimeType initialize shared preference');
    _prefs = await SharedPreferences.getInstance();
    debugPrint('$runtimeType shared preference ready!');
    counter.value = _prefs.getInt('counter') ?? 0;
    return this;
  }

  Future<void> incrementCounter() async {
    counter.value = (_prefs.getInt('counter')! + 1);
    _prefs.setInt('counter', counter.value);
  }

  Future<void> resetCounter() async {
    counter.value = 0;
    _prefs.setInt('counter', counter.value);
  }
}
