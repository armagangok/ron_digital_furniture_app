// import 'package:car_app/product/home/model/furniture_category_model.dart';
// import 'package:car_app/product/home/service/furniture_category_service.dart';
// import 'package:car_app/product/home/view_model/category_viewmodel.dart';
// import 'package:car_app/product/home/view_model/furniture_category_viewmodel.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get_navigation/get_navigation.dart';
// import 'package:get/instance_manager.dart';

// import '../../../core/init/view/base/base_stateless.dart';
// import '../../subcategory/view/subcategory_view.dart';

// class ShopView extends BaseStateless {
//   ShopView({Key? key}) : super();
//   @override
//   Widget build(BuildContext context) {
//     CategoryViewmodel categoryViewmodel = CategoryViewmodel();
//     final double h = dynamicHeight(context: context, val: 1);
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: ListView(
//           children: [
//             Text(
//               "Shop",
//               style: currentTextTheme(context).headline4,
//             ),
//             SizedBox(height: h * 0.02),
//             GeneralTextField(),
//             const Divider(
//               color: Color.fromARGB(255, 118, 118, 118),
//               thickness: 0.5,
//             ),
//             CategoriesListViewBuilder(),
//           ],
//         ),
//       ),
//     );
//   }
// }


// // List<CategoryCardWidget> list = [
// //   CategoryCardWidget(
// //     categoryModel: categoryModels[0],
// //   ),
// //   CategoryCardWidget(
// //     categoryModel: categoryModels[1],
// //   ),
// //   CategoryCardWidget(
// //     categoryModel: categoryModels[2],
// //   ),
// //   CategoryCardWidget(
// //     categoryModel: categoryModels[3],
// //   ),
// // ];

// // class CategoryModel {
// //   final String imageUrl;
// //   final String amount;
// //   final String subCategoryName;
// //   final List categoryDatas;
// //   CategoryModel({
// //     required this.imageUrl,
// //     required this.amount,
// //     required this.subCategoryName,
// //     this.categoryDatas = const [],
// //   });
// // }

// // List<CategoryModel> categoryModels = [
// //   CategoryModel(
// //     imageUrl: "assets/img/a.png",
// //     amount: '23',
// //     subCategoryName: 'Data1',
// //   ),
// //   CategoryModel(
// //     imageUrl: "assets/img/img.png",
// //     amount: '10',
// //     subCategoryName: 'Data2',
// //   ),
// //   CategoryModel(
// //     imageUrl: "assets/img/a.png",
// //     amount: '4',
// //     subCategoryName: 'Data3',
// //   ),
// //   CategoryModel(
// //     imageUrl: "assets/img/a.png",
// //     amount: '3',
// //     subCategoryName: 'Data4',
// //   ),
// // ];
