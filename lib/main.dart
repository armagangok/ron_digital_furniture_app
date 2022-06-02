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
      home: RootView(),
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
