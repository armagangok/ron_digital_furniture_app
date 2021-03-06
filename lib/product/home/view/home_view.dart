import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './components/category_card_widget.dart';
import '../../../core/init/view/base/base_stateless.dart';
import 'components/carousel_widget.dart';
import '../../../feature/components/global_appbar.dart';
import '../../../feature/components/product_widget.dart';
import '../../subcategory/view/subcategory_view.dart';
import '../controller/furniture_category_viewmodel.dart';
import '../controller/furniture_viewmodel.dart';
import '../model/furniture_category_model.dart';
import '../model/furniture_model.dart';

class HomeView extends BaseStateless {
  HomeView({Key? key}) : super();

  @override
  Widget build(BuildContext context) {
    final double h = dynamicHeight(context: context, val: 1);
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: ListView.separated(
        physics: const ClampingScrollPhysics(),
        itemCount: getWidgets(context, h).length,
        itemBuilder: (context, index) => (index == 0)
            ? getWidgets(context, h)[index]
            : Padding(
                padding: const EdgeInsets.all(10),
                child: getWidgets(context, h)[index],
              ),
        separatorBuilder: (context, index) => SizedBox(height: h * 0.02),
      ),
    );
  }

  //

  List<Widget> getWidgets(context, h) {
    final FurnitureCategoryViewmodel categoryViewmodel =
        FurnitureCategoryViewmodel();
    List<Widget> b = [
      Stack(
        children: [
          CarouselWidget(),
          GlobalAppBar(),
        ],
      ),
      SizedBox(height: h * 0.02),
      Text(
        "Top Products",
        style: currentTextTheme(context).headline4,
      ),
      FutureBuilder<List<FurnitureCategoryModel>>(
        future: categoryViewmodel.getFurnitureCategories(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return SizedBox(
              height: h * 0.32,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  var product = snapshot.data![index];
                  return InkWell(
                    // onTap: () => Get.to(ProductDetailsView(furniture: ,)),
                    child: ProductWidget(
                      title: product.title,
                      image: product.image,
                      numOfProducts: "${product.numOfProducts}",
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(width: h * 0.04),
                itemCount: snapshot.data!.length,
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return const Center(child: Text("No Data!"));
          }
        },
      ),
      SizedBox(height: h * 0.02),
      Text(
        "Categories",
        style: currentTextTheme(context).headline4,
      ),
      const CategoriesListViewBuilder(),
    ];
    return b;
  }
}

//
//
class CategoriesListViewBuilder extends StatefulWidget {
  const CategoriesListViewBuilder({Key? key}) : super();

  @override
  State<CategoriesListViewBuilder> createState() =>
      _CategoriesListViewBuilderState();
}

class _CategoriesListViewBuilderState extends State<CategoriesListViewBuilder> {
  List<String> allFurnitureNames = [];
  List<FurnitureModel> furnitureModels = [];

  @override
  void initState() {
    FurnitureViewmodel furnitureViewmodel = FurnitureViewmodel();
    furnitureViewmodel.getFurniture().then((List<FurnitureModel> models) {
      furnitureModels = models;
      for (var element in models) {
        allFurnitureNames.add(element.title);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height;
    // final double w = MediaQuery.of(context).size.width;

    return FutureBuilder(
      future: FurnitureCategoryViewmodel().getFurnitureCategories(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final List<FurnitureCategoryModel> categoryList = snapshot.data;
          return ListView.separated(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            separatorBuilder: (context, index) => SizedBox(height: h * 0.04),
            itemCount: categoryList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () async {
                  Get.to(() => const SubcategoryView());
                },
                child: CategoryCardWidget(categoryModel: categoryList[index]),
              );
            },
          );
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          return const Center(
            child: Text("Error Occured!"),
          );
        }
      },
    );
  }
}
