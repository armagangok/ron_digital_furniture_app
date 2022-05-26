// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// import '../../core/extensions/context_extension.dart';
// import '../providers/indicator_controller.dart';

// class SampleProductWidget extends StatelessWidget {
//   const SampleProductWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final IndicatorProvider indicator = Provider.of<IndicatorProvider>(context);
//     return Column(
//       children: [
//         buildSliderIndicator(indicator.activeIndex),
//         _buildCarousel(context, indicator),
//       ],
//     );
//   }

//   CarouselSlider _buildCarousel(
//       BuildContext context, IndicatorProvider indicator) {
//     return CarouselSlider.builder(
//       itemCount: onboardingProducts.length,
//       itemBuilder: (context, index, realIndex) {
//         return buildSampleProduct(
//           index,
//         );
//       },
//       options: CarouselOptions(
//         autoPlay: true,
//         height: context.getHeight(0.77),
//         viewportFraction: 1,
//         enlargeStrategy: CenterPageEnlargeStrategy.height,
//         onPageChanged: (index, reason) {
//           indicator.changeIndex(index);
//         },
//       ),
//     );
//   }

//   Widget buildSampleProduct(int index) {
//     var product = onboardingProducts[index];

//     return Column(
//       children: [
//         product,
//         const Text("product"),
//       ],
//     );
//   }

//   Widget buildSliderIndicator(int activeIndex) {
//     return AnimatedSmoothIndicator(
//       activeIndex: activeIndex.toInt(),
//       count: onboardingProducts.length,
//       effect: const SlideEffect(
//         activeDotColor: Colors.red,
//         dotHeight: 10,
//         dotWidth: 10,
//       ),
//     );
//   }
// }

// List<Widget> onboardingProducts = [
//   const Text("1"),
//   const Text("2"),
//   const Text("3"),
// ];
