import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/init/view/base/base_stateless.dart';
import '../controllers/indicator_controller.dart';

class SampleProductWidget extends BaseStateless {
  SampleProductWidget({Key? key}) : super();

  @override
  Widget build(BuildContext context) {
    final double heigth = dynamicHeight(context: context, val: 1);
    final double width = dynamicWidth(context: context, val: 1);

    final IndicatorController indicator = Get.put(IndicatorController());

    return Obx(
      () => Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildCarousel(context, indicator),
          _buildSliderIndicator(indicator, width),
        ],
      ),
    );
  }

  //
  //

  Widget _buildCarousel(context, indicator) {
    return CarouselSlider.builder(
      itemCount: getProducts().length,
      itemBuilder: (context, index, realIndex) => getProducts()[index],
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 1,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
        onPageChanged: (index, reason) => indicator.changeIndex(index),
      ),
    );
  }

  //
  //

  


  Widget _buildSliderIndicator(IndicatorController indicator, width) {
    return AnimatedSmoothIndicator(
      activeIndex: indicator.activeIndex.value,
      count: getProducts().length,
      effect: const SlideEffect(
        activeDotColor: Colors.red,
        dotHeight: 10,
        dotWidth: 10,
      ),
    );
  }

  //
  //

  List<Widget> getProducts() {
    return [
      SizedBox(
        child: Image.asset(
          "assets/img/img.png",
          fit: BoxFit.fill,
        ),
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
