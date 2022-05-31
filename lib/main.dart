import 'package:car_app/product/home/view/home_view.dart';
import 'package:car_app/product/home/view_model/category_viewmodel.dart';
import 'package:car_app/product/root/view/root_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './core/init/view/theme/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Template App',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home:  RootView(),
    );
  }
}

// class TestView extends StatelessWidget {
//   const TestView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     CategoryViewmodel vmodel = CategoryViewmodel();
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () async {},
//           child: const Text("Press"),
//         ),
//       ),
//     );
//   }
// }
