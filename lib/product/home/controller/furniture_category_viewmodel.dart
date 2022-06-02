import 'package:car_app/product/home/model/furniture_category_model.dart';
import 'package:car_app/product/home/service/furniture_category_service.dart';

class FurnitureCategoryViewmodel {
  final FurnitureCategoryService _furnitureCategoryService =
      FurnitureCategoryService();

  Future<List<FurnitureCategoryModel>> getFurnitureCategories() async {
    return await _furnitureCategoryService.fetchCategories();
  }
}
