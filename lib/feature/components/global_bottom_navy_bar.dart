// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class BottomNavyBar extends StatelessWidget {
//   const BottomNavyBar({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final BottomNavyBarProvider navyBarProvider =
//         Provider.of<BottomNavyBarProvider>(context);

//     return BottomNavigationBar(
//       currentIndex: navyBarProvider.getIndex,
//       onTap: (int index) => navyBarProvider.updateState(index),
//       items: [
//         BottomNavigationBarItem(
//           backgroundColor: Colors.white,
//           icon: Container(
//             height: 40,
//             width: 40,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(6),
//               color: const Color(0xff007AFF).withOpacity(0.1),
//             ),
//             child: const Icon(CupertinoIcons.home),
//           ),
//           label: 'Home',
//         ),
//         const BottomNavigationBarItem(
//           icon: Icon(CupertinoIcons.search),
//           label: 'Categories',
//         ),
//         const BottomNavigationBarItem(
//           icon: Icon(CupertinoIcons.bag),
//           label: 'Payment',
//         ),
//         const BottomNavigationBarItem(
//           icon: Icon(CupertinoIcons.chat_bubble),
//           label: 'Favorites',
//         ),
//         const BottomNavigationBarItem(
//           icon: Icon(CupertinoIcons.person_alt_circle),
//           label: 'Settings',
//         ),
//       ],
//     );
//   }
// }

// class BottomNavyBarProvider extends ChangeNotifier {
//   int _index = 0;
//   int get getIndex => _index;

//   updateState(int selectedIndex) {
//     _index = selectedIndex;
//     print(selectedIndex);
//     notifyListeners();
//   }
// }
