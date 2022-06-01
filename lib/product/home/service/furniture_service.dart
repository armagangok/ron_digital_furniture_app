import 'package:dio/dio.dart';

import '../model/furniture_model.dart';

class FurnitureService {
  final Dio dio = Dio();

  List<FurnitureModel> furnitures = [];

  Future<List<FurnitureModel>> fetchCategories() async {
    const String apiUrl =
        "https://5f210aa9daa42f001666535e.mockapi.io/api/products";

    final response = await dio.get(apiUrl);

    for (var element in response.data) {
      furnitures.add(FurnitureModel.fromMap(element));
    }

    print(furnitures[0].id);

    return furnitures;
  }
}
