import 'package:get/get.dart';

class NavyBarController extends GetxController {
  final _index = RxInt(0);

  RxInt get getIndex => _index;

  updateIndex(int selectedIndex) {
    _index.value = selectedIndex;
  }
}
