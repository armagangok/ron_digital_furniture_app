import 'package:car_app/core/init/view/base/base_stateless.dart';
import 'package:car_app/feature/controllers/navybar_conteroller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class BottomNavyBar extends BaseStateless {
  BottomNavyBar({Key? key}) : super();

  @override
  Widget build(BuildContext context) {
    final NavyBarController controller = Get.put(NavyBarController());
    return Obx(
      () => BottomNavigationBar(
        currentIndex: controller.getIndex.value,
        backgroundColor: Colors.white,
        onTap: (int index) {
          controller.updateIndex(index);
        },
        fixedColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: BottomNavyBarIcon(
              iconData: CupertinoIcons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: BottomNavyBarIcon(
              iconData: CupertinoIcons.search,
            ),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: BottomNavyBarIcon(
              iconData: CupertinoIcons.bag,
            ),
            label: 'Payment',
          ),
          BottomNavigationBarItem(
            icon: BottomNavyBarIcon(
              iconData: CupertinoIcons.chat_bubble,
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: BottomNavyBarIcon(
              iconData: CupertinoIcons.person_alt_circle,
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}

class BottomNavyBarIcon extends StatelessWidget {
  const BottomNavyBarIcon({
    Key? key,
    required this.iconData,
  }) : super(key: key);

  final IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return Icon(iconData, size: 26);
  }
}
