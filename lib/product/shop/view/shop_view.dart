import 'package:car_app/product/home/view_model/category_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';

import '../../../core/init/view/base/base_stateless.dart';
import '../../home/service/category_service.dart';
import '../../subcategory/view/subcategory_view.dart';

class ShopView extends BaseStateless {
  ShopView({Key? key}) : super();
  @override
  Widget build(BuildContext context) {
    final double h = dynamicHeight(context: context, val: 1);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text(
              "Shop",
              style: currentTextTheme(context).headline4,
            ),
            SizedBox(height: h * 0.02),
            GeneralTextField(),
            const Divider(
              color: Color.fromARGB(255, 118, 118, 118),
              thickness: 0.5,
            ),
            CategoriesListViewBuilder(),
          ],
        ),
      ),
    );
  }
}

class CategoriesListViewBuilder extends BaseStateless {
  CategoriesListViewBuilder({Key? key}) : super();

  @override
  Widget build(BuildContext context) {
    final CategoryViewmodel categoryViewModel = CategoryViewmodel();
    final double h = dynamicHeight(context: context, val: 1);
    final double w = dynamicWidth(context: context, val: 1);

    return FutureBuilder<List<CategoryModel>>(
      future: categoryViewModel.getCategories(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          final List<CategoryModel> categoryList = snapshot.data;

          return ListView.separated(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            separatorBuilder: (context, index) => SizedBox(width: w * 0.05),
            itemCount: categoryList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.to(
                    SubcategoryView(categoryModel: categoryList[index]),
                  );
                },
                child: CategoryCardWidget(categoryModel: categoryList[index]),
              );
            },
          );
        } else if (snapshot.hasError) {
          return const Center(
            child: Text("Error Occured"),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

class CategoryCardWidget extends BaseStateless {
  CategoryCardWidget({
    Key? key,
    required this.categoryModel,
  }) : super();

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    final double h = dynamicHeight(context: context, val: 1);
    final double w = dynamicWidth(context: context, val: 1);
    return Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11),
          ),
          color: Colors.amber,
          child: SizedBox(
            height: h * 0.30,
            width: w,
            child: Image.asset(
              "assets/img/a.png",
              fit: BoxFit.fill,
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categoryModel.vehicleTypeName ?? "null",
                style: currentTheme(context).textTheme.headline5,
              ),
              Text(
                categoryModel.makeName ?? "null",
                style: currentTheme(context).textTheme.labelSmall,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class GeneralTextField extends BaseStateless {
  GeneralTextField({Key? key}) : super();

  @override
  Widget build(BuildContext context) {
    final double h = dynamicHeight(context: context, val: 1);
    return SizedBox(
      height: h * 0.05,
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          filled: true,
          fillColor: const Color(0xff767680).withOpacity(0.12),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          prefixIcon: const Icon(
            CupertinoIcons.search,
            color: Colors.black,
            size: 16,
          ),
        ),
      ),
    );
  }
}

// List<CategoryCardWidget> list = [
//   CategoryCardWidget(
//     categoryModel: categoryModels[0],
//   ),
//   CategoryCardWidget(
//     categoryModel: categoryModels[1],
//   ),
//   CategoryCardWidget(
//     categoryModel: categoryModels[2],
//   ),
//   CategoryCardWidget(
//     categoryModel: categoryModels[3],
//   ),
// ];

// class CategoryModel {
//   final String imageUrl;
//   final String amount;
//   final String subCategoryName;
//   final List categoryDatas;
//   CategoryModel({
//     required this.imageUrl,
//     required this.amount,
//     required this.subCategoryName,
//     this.categoryDatas = const [],
//   });
// }

// List<CategoryModel> categoryModels = [
//   CategoryModel(
//     imageUrl: "assets/img/a.png",
//     amount: '23',
//     subCategoryName: 'Data1',
//   ),
//   CategoryModel(
//     imageUrl: "assets/img/img.png",
//     amount: '10',
//     subCategoryName: 'Data2',
//   ),
//   CategoryModel(
//     imageUrl: "assets/img/a.png",
//     amount: '4',
//     subCategoryName: 'Data3',
//   ),
//   CategoryModel(
//     imageUrl: "assets/img/a.png",
//     amount: '3',
//     subCategoryName: 'Data4',
//   ),
// ];
