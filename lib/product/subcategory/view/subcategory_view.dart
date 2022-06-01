// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/init/view/base/base_stateless.dart';
import '../../../feature/components/global_appbar.dart';
import '../../../feature/components/global_textfield.dart';
import '../../home/model/furniture_model.dart';
import '../../home/view_model/furniture_viewmodel.dart';
import '../../product/view/product_details_view.dart';

class SubcategoryView extends BaseStateless {
  SubcategoryView({
    required this.categoryName,
  }) : super();

  final String categoryName;

  @override
  Widget build(BuildContext context) {
    FurnitureViewmodel furnitureViewmodel = FurnitureViewmodel();
    return Scaffold(
      appBar: GlobalAppBar(),
      body: Column(
        children: [
          GeneralTextField(),
          FutureBuilder(
            future: furnitureViewmodel.getData(),
            builder: (context, AsyncSnapshot<List<FurnitureModel>> snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                print(snapshot.data![0].description);
                return GridView.builder(
                  padding: const EdgeInsets.all(2),
                  itemCount: snapshot.data!.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (context, index) {
                    return ProductWidget(furniture: snapshot.data![index]);
                  },
                );
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return const Center(child: Text("Error Occured!"));
              }
            },
          ),
        ],
      ),
    );
  }
}

class ProductWidget extends BaseStateless {
  FurnitureModel furniture;
  ProductWidget({
    Key? key,
    required this.furniture,
  }) : super();

  @override
  Widget build(BuildContext context) {
    print(furniture.category);
    print(furniture.description);
    print(furniture.id);
    final double h = dynamicHeight(context: context, val: 1);
    // final double w = dynamicWidth(context: context, val: 1);
    return GestureDetector(
      onTap: () => Get.to(() => ProductDetailsView(
            furniture: furniture,
          )),
      child: Column(children: [
        SizedBox(
          height: h * 0.2,
          width: h * 0.2,
          child: Image.network(
            furniture.image,
            fit: BoxFit.fill,
          ),
        ),
        Text(
          furniture.title,
          style: currentTheme(context).textTheme.titleLarge,
        ),
        Text(
          furniture.subTitle,
          // style: currentTheme(context).textTheme.headline1,
        ),
      ]),
    );
  }
}
