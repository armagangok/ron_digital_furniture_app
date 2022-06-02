import 'package:get/get.dart';

import '../../home/model/furniture_model.dart';

class SearchController extends GetxController {
  final RxList<FurnitureModel> displayList = RxList([]);

  RxList<FurnitureModel> get getDisplayList => displayList;

  void updateList(List<FurnitureModel> allFurnitures, String value) {
    displayList.value = allFurnitures
        .where((furniture) =>
            furniture.title.toLowerCase().contains(value.toLowerCase()))
        .toList();

    (value == "") ? displayList.clear() : {};
  }
}
