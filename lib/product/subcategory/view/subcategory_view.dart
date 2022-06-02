import 'package:car_app/product/home/controller/furniture_viewmodel.dart';
import 'package:car_app/product/subcategory/controller/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/init/view/base/base_stateless.dart';
import '../../../feature/components/general_textfield.dart';
import '../../../feature/components/global_appbar.dart';
import '../../home/model/furniture_model.dart';
import '../../product/view/product_details_view.dart';

class SubcategoryView extends StatefulWidget {
  const SubcategoryView({Key? key}) : super();

  @override
  State<SubcategoryView> createState() => _SubcategoryViewState();
}

class _SubcategoryViewState extends State<SubcategoryView> {
  final FurnitureViewmodel _furnitureViewmodel = FurnitureViewmodel();
  List<FurnitureModel> allFurnitures = [];

  @override
  void initState() {
    _furnitureViewmodel
        .getFurniture()
        .then((fetchedFurnitures) => allFurnitures = fetchedFurnitures);
    super.initState();
  }

  final TextEditingController textController = TextEditingController();
  final SearchController controller = SearchController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Column(
          children: [
            GeneralTextField(
              controller: textController,
              onChanged: (value) => controller.updateList(allFurnitures, value),
            ),
            Expanded(
              child: Obx(
                () {
                  var displayList = controller.getDisplayList.value;
                  return GridView.builder(
                    padding: const EdgeInsets.all(2),
                    itemCount: displayList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1,
                    ),
                    itemBuilder: (context, index) =>
                        ProductWidget(furniture: displayList[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductWidget extends BaseStateless {
  final FurnitureModel furniture;
  ProductWidget({
    Key? key,
    required this.furniture,
  }) : super();

  @override
  Widget build(BuildContext context) {
    final double h = dynamicHeight(context: context, val: 1);
    // final double w = dynamicWidth(context: context, val: 1);
    return GestureDetector(
      onTap: () => Get.to(() => ProductDetailsView(furniture: furniture)),
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
