import 'dart:convert';

class FurnitureModel {
  final int price;
  final String id, title, category, image, subTitle, description;

  FurnitureModel({
    required this.price,
    required this.id,
    required this.title,
    required this.category,
    required this.image,
    required this.subTitle,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return {
      'price': price,
      'id': id,
      'title': title,
      'category': category,
      'image': image,
      'subTitle': subTitle,
      'description': description,
    };
  }

  factory FurnitureModel.fromMap(Map<String, dynamic> map) {
    return FurnitureModel(
      price: map['price']?.toInt() ?? 0,
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      category: map['category'] ?? '',
      image: map['image'] ?? '',
      subTitle: map['subTitle'] ?? '',
      description: map['description'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory FurnitureModel.fromJson(String source) =>
      FurnitureModel.fromMap(json.decode(source));
}
