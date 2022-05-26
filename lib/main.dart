import 'package:flutter/material.dart';

import './feature/theme/theme.dart';
import './product/view/home_view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Template App',
      debugShowCheckedModeBanner: false,
      theme: MyTheme().theme,
      home: const HomeView(),
    );
  }
}
