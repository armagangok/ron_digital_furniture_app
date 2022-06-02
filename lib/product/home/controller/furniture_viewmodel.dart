import 'package:car_app/product/home/service/furniture_service.dart';

import '../model/furniture_model.dart';

class FurnitureViewmodel {
  final FurnitureService _furnitureService = FurnitureService();

  Future<List<FurnitureModel>> getFurniture() async {
    return await _furnitureService.fetchCategories();
  }
}
