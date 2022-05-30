import 'package:flutter/material.dart';

import '../../../core/init/view/base/base_stateless.dart';
import '../../../feature/components/global_appbar.dart';
import '../../../feature/components/sample_product_widget.dart';

class ProductDetailsView extends BaseStateless {
  ProductDetailsView({Key? key}) : super();

  @override
  Widget build(BuildContext context) {
    // final double h = dynamicHeight(context: context, val: 1);
    final double w = dynamicWidth(context: context, val: 1);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: GlobalAppBar(),
      body: ListView(
        children: [
          SampleProductWidget(),
          productName(context),
          rateProduct(),
          chooseProductNumber(w),
          productDetails(),
        ],
      ),
    );
  }

  //

  Column productDetails() {
    return Column(
      children: const [
        Text("Some Product Details Text"),
      ],
    );
  }

  //

  Text productName(BuildContext context) {
    return Text(
      "Some Product Name Here",
      style: currentTextTheme(context).headline5,
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

  Widget chooseProductNumber(double w) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("\$237"),
        SizedBox(
          width: w * 0.3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.remove,
                    color: Colors.black,
                  ),
                ),
              ),
              const Text("5"),
              CircleAvatar(
                child: IconButton(
                  onPressed: () {},
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
