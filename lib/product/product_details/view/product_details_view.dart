import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

import '../../../core/init/view/base/base_stateless.dart';
import '../../../feature/components/global_appbar.dart';
import 'components/raiting_widget.dart';
import '../../home/model/furniture_model.dart';
import '../controller/cart_controller.dart';

class ProductDetailsView extends BaseStateless {
  ProductDetailsView({
    required this.furniture,
  }) : super();

  final FurnitureModel furniture;

  CartController controller = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    final double h = dynamicHeight(context: context, val: 1);
    final double w = dynamicWidth(context: context, val: 1);

    List<Widget> widgets = [
      SizedBox(
        height: h * 0.4,
        child: Image.network(
          furniture.image,
          fit: BoxFit.fill,
        ),
      ),
      productName(context),
      const RatingWidget(
        color: Colors.amber,
        filledColor: Colors.amber,
      ),
      chooseProductNumber(w, controller),
      productDetails(),
      buyButton(),
    ];
    return Scaffold(
      appBar: GlobalAppBar(),
      body: ListView.separated(
        itemCount: widgets.length,
        physics: const ClampingScrollPhysics(),
        itemBuilder: (context, index) => (index == 0)
            ? widgets[index]
            : Padding(
                padding: const EdgeInsets.all(10.0),
                child: widgets[index],
              ),
        separatorBuilder: (context, index) => SizedBox(height: h * 0.01),
      ),
    );
  }

  ElevatedButton buyButton() {
    return ElevatedButton(
      onPressed: () {},
      child: const Text("Buy"),
    );
  }

  //

  Column productDetails() {
    return Column(
      children: [
        Text(furniture.description),
        Text(furniture.subTitle),
      ],
    );
  }

  //

  Widget productName(BuildContext context) {
    return Column(
      children: [
        Text(
          furniture.title,
          style: currentTextTheme(context).headline5,
        ),
        Text(furniture.title),
      ],
    );
  }

  //

  Icon rateProduct() {
    return const Icon(
      Icons.star,
      color: Colors.black,
    );
  }

  //

  Widget chooseProductNumber(double w, CartController controller) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("\$${furniture.price}"),
        SizedBox(
          width: w * 0.3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                child: IconButton(
                  onPressed: () {
                    controller.removeProduct();
                  },
                  icon: const Icon(
                    Icons.remove,
                    color: Colors.black,
                  ),
                ),
              ),
              Obx(
                () => Text("${controller.getProductNumber}"),
              ),
              CircleAvatar(
                child: IconButton(
                  onPressed: () {
                    controller.addProduct();
                  },
                  icon: const Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
