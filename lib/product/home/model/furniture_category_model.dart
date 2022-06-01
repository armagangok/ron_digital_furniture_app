import 'dart:convert';

class FurnitureCategoryModel {
  final String id;
  final String title;
  final String image;
  final int numOfProducts;

  FurnitureCategoryModel({
    required this.id,
    required this.title,
    required this.image,
    required this.numOfProducts,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'image': image,
      'numOfProducts': numOfProducts,
    };
  }

  factory FurnitureCategoryModel.fromMap(Map<String, dynamic> map) {
    return FurnitureCategoryModel(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      image: map['image'] ?? '',
      numOfProducts: map['numOfProducts']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory FurnitureCategoryModel.fromJson(String source) =>
      FurnitureCategoryModel.fromMap(json.decode(source));
}
