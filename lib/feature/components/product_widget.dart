import 'package:flutter/material.dart';

import '../../core/init/view/base/base_stateless.dart';

class ProductWidget extends BaseStateless {
  final String title;
  final String image;
  final String numOfProducts;

  ProductWidget({
    Key? key,
    required this.title,
    required this.image,
    required this.numOfProducts,
  }) : super();

  @override
  Widget build(BuildContext context) {
    final double h = dynamicHeight(context: context, val: 1);
    final double w = dynamicWidth(context: context, val: 1);
    return Column(children: [
      SizedBox(
        height: h * 0.2,
        width: h * 0.25,
        child: Image.network(
          image,
          fit: BoxFit.fill,
        ),
      ),
      Text(
        title,
        style: currentTheme(context).textTheme.titleLarge,
      ),
      Text(
        numOfProducts,
        // style: currentTheme(context).textTheme.headline1,
      ),
    ]);
  }
}
