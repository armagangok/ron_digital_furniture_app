import 'package:flutter/material.dart';

import '../../../core/init/view/base/base_stateless.dart';
import '../../../feature/components/global_appbar.dart';
import '../../home/service/category_service.dart';
import '../../shop/view/shop_view.dart';
import '../../home/view/home_view.dart';

class SubcategoryView extends BaseStateless {
  SubcategoryView({
    required this.categoryModel,
  }) : super();

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBar(),
      body: GridView.builder(
        
        padding: const EdgeInsets.all(2),
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          return ProductWidget("productName", "5");
        },
      ),
    );
  }
}
