import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/init/view/base/base_stateless.dart';
import '../../../feature/components/bottom_navy_bar_icon.dart';
import '../../../feature/controllers/navybar_conteroller.dart';
import '../../home/view/home_view.dart';
import '../../profile/profile_view.dart';
import '../../search/view/search_view.dart';

class RootView extends BaseStateless {
  RootView({Key? key}) : super();

  @override
  Widget build(BuildContext context) {
    final NavyBarController controller = Get.put(NavyBarController());

    List<Widget> pages = [
      HomeView(),
      SearchView(),
      const ShopView(),
      const Text("data4"),
      ProfileView(),
    ];

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Obx(() => pages[controller.getIndex.value]),
      bottomNavigationBar: BottomNavyBar(),
    );
  }
}

class ShopView extends StatelessWidget {
  const ShopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shop"),
      ),
    );
  }
}
