import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/init/view/base/base_stateless.dart';
import '../controller/indicator_controller.dart';

class CarouselWidget extends BaseStateless {
  CarouselWidget({Key? key}) : super();

  @override
  Widget build(BuildContext context) {
    final double h = dynamicHeight(context: context, val: 1);
    final double w = dynamicWidth(context: context, val: 1);

    final IndicatorController indicator = Get.put(IndicatorController());

    return Obx(
      () => Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CarouselSlider.builder(
            itemCount: getProducts().length,
            itemBuilder: (context, index, realIndex) {
              return SizedBox(
                width: double.infinity,
                child: getProducts()[index],
              );
            },
            options: CarouselOptions(
              aspectRatio: 1,
              autoPlay: true,
              viewportFraction: 1,
              onPageChanged: (index, reason) => indicator.changeIndex(index),
            ),
          ),
          _buildSliderIndicator(indicator, w),
        ],
      ),
    );
  }

  //
  //

  Widget _buildSliderIndicator(indicator, width) {
    return AnimatedSmoothIndicator(
      activeIndex: indicator.activeIndex.value,
      count: getProducts().length,
      effect: const SlideEffect(
        activeDotColor: Colors.white,
        dotHeight: 10,
        dotWidth: 10,
      ),
    );
  }

  //
  //

  List<Widget> getProducts() {
    return [
      Image.asset(
        "assets/img/img.png",
        fit: BoxFit.fill,
      ),
      Image.asset(
        "assets/img/img.png",
        fit: BoxFit.fill,
      ),
      Image.asset(
        "assets/img/img.png",
        fit: BoxFit.fill,
      ),
    ];
  }
}
