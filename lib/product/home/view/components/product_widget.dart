import 'package:flutter/material.dart';

import '../../../../core/init/view/base/base_stateless.dart';
import '../../model/furniture_category_model.dart';

class ProductWidget1 extends BaseStateless {
  FurnitureCategoryModel furniture;
  ProductWidget1({
    Key? key,
    required this.furniture,
  }) : super();

  @override
  Widget build(BuildContext context) {
    final double h = dynamicHeight(context: context, val: 1);
    final double w = dynamicWidth(context: context, val: 1);
    return GestureDetector(
      child: Column(children: [
        SizedBox(
          height: h * 0.25,
          width: h * 0.25,
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
          "${furniture.numOfProducts}",
          // style: currentTheme(context).textTheme.headline1,
        ),
      ]),
    );
  }
}
