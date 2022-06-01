import 'package:flutter/material.dart';

import '../../../../core/init/view/base/base_stateless.dart';
import '../../model/furniture_category_model.dart';

class CategoryCardWidget extends BaseStateless {
  CategoryCardWidget({
    Key? key,
    required this.categoryModel,
  }) : super();

  final FurnitureCategoryModel categoryModel;

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
            child: Image.network(
              categoryModel.image,
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
                categoryModel.title,
                style: currentTheme(context).textTheme.headline5,
              ),
              Text(
                "${categoryModel.numOfProducts}",
                style: currentTheme(context).textTheme.labelSmall,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
