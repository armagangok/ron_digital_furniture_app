import 'package:car_app/core/init/view/base/base_stateless.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  Widget button(heigth) {
    return CircleAvatarWidget(
      icon: IconButton(
        onPressed: () {},
        icon: getIcon(
          heigth,
          CupertinoIcons.arrow_up_left_circle,
        ),
      ),
    );
  }

  //
  //

  // IconButton menuButtonAndAppIcon(BuildContext context) {
  //   return IconButton(
  //     icon: Row(
  //       children: const [
  //         Icon(
  //           Icons.menu,
  //           color: Colors.black,
  //         ),
  //       ],
  //     ),
  //     onPressed: () => Scaffold.of(context).openDrawer(),
  //     tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
  //   );
  // }

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

  Widget searchButton(heigth) {
    return CircleAvatarWidget(
      icon: Center(
        child: IconButton(
          onPressed: () {},
          icon: getIcon(heigth, CupertinoIcons.search),
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
    return SizedBox(
      width: width * 0.06,
      child: CircleAvatarWidget(
        icon: IconButton(
          onPressed: () {},
          icon: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              DotWidget(),
              DotWidget(),
              DotWidget(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 76);

  //
  //

  // Widget appIcon() => Expanded(child: Image.asset(appConstants.appIconPath));

  //
  //
}

class DotWidget extends StatelessWidget {
  const DotWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 3,
      backgroundColor: Colors.black,
    );
  }
}

class CircleAvatarWidget extends BaseStateless {
  final Widget icon;

  CircleAvatarWidget({
    required this.icon,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: dynamicHeight(context: context, val: 0.03),
      backgroundColor: Colors.white,
      child: icon,
    );
  }
}
