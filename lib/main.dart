import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './core/init/view/theme/theme.dart';
import 'product/root/view/root_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Template App',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: RootView(),
    );
  }
}
