import 'package:car_app/core/init/view/base/base_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlobalAppBar extends BaseState {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: dynamicHeight(0.15),
      leading: Builder(
        builder: (BuildContext context) => menuButtonAndAppIcon(context),
      ),
      actions: [
        searchButton(),
        myProfileButton(),
        // myProfileText(),
      ],
    );
  }

  //
  //

  IconButton menuButtonAndAppIcon(BuildContext context) {
    return IconButton(
      icon: Row(
        children: const [
          Icon(Icons.menu),
          // appIcon(),
        ],
      ),
      onPressed: () => Scaffold.of(context).openDrawer(),
      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
    );
  }

  //
  //

  // Padding myProfileText() {
  //   return  Padding(
  //     padding: const EdgeInsets.only(right: 8),
  //     child: Center(child: TextBody1(text: LocaleKeys.myProfile.tr())),
  //   );
  // }

  //
  //

  IconButton searchButton() {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.search),
    );
  }

  //
  //

  IconButton myProfileButton() {
    return IconButton(
      onPressed: () {},
      icon: const Icon(CupertinoIcons.person),
    );
  }

  //
  //

  // Widget appIcon() => Expanded(child: Image.asset(appConstants.appIconPath));

  //
  //

  Size get preferredSize => const Size.fromHeight(56);
}
