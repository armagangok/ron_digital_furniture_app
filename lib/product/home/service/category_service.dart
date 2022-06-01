// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:car_app/feature/constant/api_constant.dart';
import 'package:dio/dio.dart';

import '../../../core/init/service/base_service.dart';

class CategoryService extends BaseService {
  Future<List<CategoryModel>> fetchProducts() async {
    final Dio dio = Dio();

    List<CategoryModel> categories = [];

    try {
      Response response = await dio.get(getCategories);
      print(response.data["Results"]);

      for (var element in response.data["Results"]) {
        categories.add(CategoryModel.fromMap(element));
      }
      return categories;
    } catch (e) {
      print(e);
      return categories;
    }
  }
}

class CategoryModel {
  int? makeId;
  String? makeName;
  int? vehicleTypeId;
  String? vehicleTypeName;

  CategoryModel({
    this.makeId,
    this.makeName,
    this.vehicleTypeId,
    this.vehicleTypeName,
  });

  Map<String, dynamic> toMap() {
    return {
      'MakeId': makeId,
      'MakeName': makeName,
      'VehicleTypeId': vehicleTypeId,
      'VehicleTypeName': vehicleTypeName,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      makeId: map['MakeId']?.toInt(),
      makeName: map['MakeName'],
      vehicleTypeId: map['VehicleTypeId']?.toInt(),
      vehicleTypeName: map['VehicleTypeName'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) =>
      CategoryModel.fromMap(json.decode(source));
}
