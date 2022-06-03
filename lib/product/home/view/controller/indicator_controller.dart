import 'package:get/state_manager.dart';

class IndicatorController extends GetxController {
  final  _activeIndex = RxInt(0);

  RxInt get activeIndex => _activeIndex;

  changeIndex(int index) {
    _activeIndex.value = index;
  }
}
