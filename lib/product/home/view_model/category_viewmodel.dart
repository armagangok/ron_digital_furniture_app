import 'package:car_app/product/home/service/category_service.dart';

class CategoryViewmodel {
  final CategoryService _service = CategoryService();

  Future<List<CategoryModel>> getCategories() async {
    final a = await _service.fetchProducts();

    return a;
  }
}
