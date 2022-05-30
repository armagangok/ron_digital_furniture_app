import 'package:flutter/material.dart';

import '../../../core/init/view/base/base_stateless.dart';
import '../../../feature/components/global_appbar.dart';
import '../../../feature/components/sample_product_widget.dart';
import '../../shop/view/shop_view.dart';

class HomeView extends BaseStateless {
  HomeView({Key? key}) : super();

  @override
  Widget build(BuildContext context) {
    final double h = dynamicHeight(context: context, val: 1);
    return Scaffold(
      appBar: GlobalAppBar(),
      extendBodyBehindAppBar: true,
      body: ListView.separated(
        physics: const ClampingScrollPhysics(),
        itemCount: getWidgets(context, h).length,
        itemBuilder: (context, index) => getWidgets(context, h)[index],
        separatorBuilder: (context, index) => SizedBox(height: h * 0.02),
      ),
    );
  }

  List<Widget> getWidgets(context, h) {
    List<Widget> b = [
      SampleProductWidget(),
      SizedBox(height: h * 0.02),
      Text(
        "Top Products",
        style: currentTextTheme(context).headline4,
      ),
      SizedBox(
        height: h * 0.28,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => a[index],
          separatorBuilder: (context, index) => SizedBox(width: h * 0.04),
          itemCount: a.length,
        ),
      ),
      SizedBox(height: h * 0.02),
      Text(
        "Categories",
        style: currentTextTheme(context).headline4,
      ),
      CategoriesListViewBuilder(),
    ];
    return b;
  }

  List<ProductWidget> a = [
    ProductWidget("productName", "10"),
    ProductWidget("productName", "12"),
    ProductWidget("productName", "15"),
  ];
}

class ProductWidget extends BaseStateless {
  final String productName;
  final String itemNumber;

  ProductWidget(this.productName, this.itemNumber, {Key? key}) : super();

  @override
  Widget build(BuildContext context) {
    final double h = dynamicHeight(context: context, val: 1);
    // final double w = dynamicWidth(context: context, val: 1);
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage("assets/img/img.png"),
              fit: BoxFit.fill,
            ),
            // border: Border.none,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          height: h * 0.2,
          width: h * 0.2,
        ),
        Text(
          productName,
          style: currentTheme(context).textTheme.titleLarge,
        ),
        Text(
          itemNumber,
          // style: currentTheme(context).textTheme.headline1,
        ),
      ],
    );
  }
}
