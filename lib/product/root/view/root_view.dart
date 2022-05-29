import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/init/view/base/base_stateless.dart';
import '../../../feature/components/bottom_navy_bar_icon.dart';
import '../../../feature/controllers/navybar_conteroller.dart';
import '../../shop/view/shop_view.dart';
import '../../home/view/home_view.dart';
import '../../search/view/search_view.dart';

class RootView extends BaseStateless {
  RootView({Key? key}) : super();

  @override
  Widget build(BuildContext context) {
    final NavyBarController controller = Get.put(NavyBarController());

    List<Widget> pages = [
      HomeView(),
      SearchView(),
      ShopView(),
      const Text("data4"),
      const Text("data5"),
    ];

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Obx(() => pages[controller.getIndex.value]),
      bottomNavigationBar: BottomNavyBar(),
    );
  }
}
