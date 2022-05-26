import 'package:flutter/material.dart';
class CarApplanguage {
  static CarApplanguage? _instance;
  static CarApplanguage get instance {
    _instance ??= CarApplanguage._init();
    return _instance!;
  }

  CarApplanguage._init();

  final enLocale = const Locale('en', 'US');
  List<Locale> get supportedLocales =>  [enLocale];
}
