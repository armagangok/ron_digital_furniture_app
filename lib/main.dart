import 'package:car_app/feature/controllers/preference_controller.dart';
import 'package:car_app/product/auth/view/login.dart';
import 'package:car_app/product/root/view/root_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './core/init/view/theme/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final PreferenceController _controller = PreferenceController();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Template App',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: FutureBuilder<bool?>(
        future: _controller.checkLoginStatus(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return (snapshot.data == true) ? RootView() : LoginScreen();
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

// class TestView extends StatefulWidget {
//   const TestView({Key? key}) : super(key: key);

//   @override
//   State<TestView> createState() => _TestViewState();
// }

// class _TestViewState extends State<TestView> {
//   List<FurnitureModel> furnitureModels = [];
//   @override
//   void initState() {
//     FurnitureViewmodel furniture = FurnitureViewmodel();
//     furniture.getData().then((value) => furnitureModels = value);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final List<String> allFurnitureNames = [];

//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () async {
//             for (var furnitureModel in furnitureModels) {
//               allFurnitureNames.add(furnitureModel.title);
//             }

//             final String selectedFurniture = await showSearch(
//               context: context,
//               delegate: CustomSearchDelegate(
//                 furnitureModels: furnitureModels,
//                 allFurnitures: allFurnitureNames,
//                 suggestions: allFurnitureNames,
//               ),
//             );
//           },
//           child: const Text("Press"),
//         ),
//       ),
//     );
//   }
// }
