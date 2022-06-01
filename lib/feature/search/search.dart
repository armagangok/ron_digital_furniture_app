import 'package:flutter/material.dart';

import '../../product/home/model/furniture_model.dart';
import '../../product/subcategory/view/subcategory_view.dart';

class CustomSearchDelegate extends SearchDelegate {
  final List<String> allFurnitures;
  final List<String> suggestions;
  final List<FurnitureModel> furnitureModels;

  CustomSearchDelegate({
    required this.furnitureModels,
    required this.allFurnitures,
    required this.suggestions,
  });

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios),
      onPressed: () {
        close(context, query);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List allFurnituresList = allFurnitures
        .where((furniture) =>
            furniture.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return GridView.builder(
      padding: const EdgeInsets.all(2),
      itemCount: furnitureModels.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        return ProductWidget(furniture: furnitureModels[index]);
      },
    );

    //  ListView.builder(
    //   itemBuilder: (context, index) {
    //     return ListTile(
    //       title: Text(allFurnituresList[index]),
    //       onTap: () {
    //         query = allFurnitures[index];
    //         close(context, query);
    //       },
    //     );
    //   },
    //   itemCount: allFurnituresList.length,
    // );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<String> furnitureSuggestions = suggestions
        .where((furniture) =>
            furniture.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return GridView.builder(
      padding: const EdgeInsets.all(2),
      itemCount: furnitureModels.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        return ProductWidget(furniture: furnitureModels[index]);
      },
    );

    // ListView.builder(
    //   itemBuilder: (context, index) {
    //     return ListTile(
    //       title: Text(furnitureSuggestions[index]),
    //       onTap: () {
    //         query = furnitureSuggestions[index];
    //         close(context, query);
    //       },
    //     );
    //   },
    //   itemCount: furnitureSuggestions.length,
    // );
  }
}
