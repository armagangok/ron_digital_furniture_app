import 'package:dio/dio.dart';

import '../model/furniture_category_model.dart';

class FurnitureCategoryService {
  final Dio dio = Dio();

  List<FurnitureCategoryModel> products = [];

  Future<List<FurnitureCategoryModel>> fetchCategories() async {
    const String apiUrl =
        "https://5f210aa9daa42f001666535e.mockapi.io/api/categories";

    final response = await dio.get(apiUrl);

    for (var element in response.data) {
      products.add(FurnitureCategoryModel.fromMap(element));
    }

    return products;
  }
}
