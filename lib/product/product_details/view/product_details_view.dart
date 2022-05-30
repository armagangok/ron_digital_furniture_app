import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:star_rating/star_rating.dart';

import '../../../core/init/view/base/base_stateless.dart';
import '../../../feature/components/global_appbar.dart';
import '../../../feature/components/sample_product_widget.dart';
import '../controller/cart_controller.dart';

class ProductDetailsView extends BaseStateless {
  ProductDetailsView({Key? key}) : super();

  CartController controller = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    double rating = 5;
    // final double h = dynamicHeight(context: context, val: 1);
    final double w = dynamicWidth(context: context, val: 1);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: GlobalAppBar(),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          SampleProductWidget(),
          productName(context),
          ratingButton(),
          chooseProductNumber(w, controller),
          productDetails(),
          buyButton(),
        ],
      ),
    );
  }

  ElevatedButton buyButton() {
    return ElevatedButton(
      onPressed: () {},
      child: const Text("Buy"),
    );
  }

  StarRating ratingButton() {
    return StarRating(
      rating: 5,
      length: 5,
      onRaitingTap: (val) {
        print(val);
      },
    );
  }

  //

  Column productDetails() {
    return Column(
      children: const [
        Text("Some Product Details Text"),
        Text("Some Product Details Text"),
        Text("Some Product Details Text"),
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

  Widget chooseProductNumber(double w, CartController controller) {
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

//
//

class GlobalAppBar extends BaseStateless with PreferredSizeWidget {
  GlobalAppBar({Key? key}) : super();

  @override
  Widget build(BuildContext context) {
    final double heigth = dynamicHeight(context: context, val: 1);
    // final double width = dynamicWidth(context: context, val: 1);
    return AppBar(
      leading: button(heigth),
      actions: [
        searchButton(heigth),

        dotsButton(heigth),
        // myProfileText(),
      ],
    );
  }

  //
  //

  Widget button(heigth) {
    return CircleAvatarWidget(
      icon: IconButton(
        onPressed: () {},
        icon: getIcon(
          heigth,
          CupertinoIcons.xmark,
        ),
      ),
    );
  }

//
//

  Widget searchButton(heigth) {
    return CircleAvatarWidget(
      icon: Center(
        child: IconButton(
          onPressed: () {},
          icon: getIcon(heigth, CupertinoIcons.share),
        ),
      ),
    );
  }

  Icon getIcon(heigth, iconThemeData) {
    return Icon(
      iconThemeData,
      color: Colors.black,
      size: heigth * 0.044,
    );
  }

  //
  //

  Widget dotsButton(width) {
    return CircleAvatarWidget(
      icon: IconButton(
        onPressed: () {},
        icon: const Icon(
          CupertinoIcons.heart,
          color: Colors.black,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 76);
}

// typedef RatingChangeCallback = void Function(double rating);

// class StarRating extends StatelessWidget {
//   final int starCount;
//   final double rating;
//   final RatingChangeCallback? onRatingChanged;
//   final Color? color;
//   const StarRating({
//     Key? key,
//     this.starCount = 5,
//     this.rating = 0,
//     required this.onRatingChanged,
//     required this.color,
//   }) : super(key: key);

//   Widget buildStar(BuildContext context, int index) {
//     Icon icon;
//     if (index >= rating) {
//       icon = const Icon(
//         Icons.star_border,
//         color: Colors.yellow,
//       );
//     } else if (index > rating - 1 && index < rating) {
//       icon = Icon(
//         Icons.star_half,
//         color: color,
//       );
//     } else {
//       icon = Icon(
//         Icons.star,
//         color: color ?? Theme.of(context).primaryColor,
//       );
//     }
//     return InkResponse(
//       onTap:
//           onRatingChanged == null ? null : () => onRatingChanged!(index + 1.0),
//       child: icon,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//         children:
//             List.generate(starCount, (index) => buildStar(context, index)));
//   }
// }
