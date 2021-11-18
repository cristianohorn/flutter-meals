import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';
import '../components/category_item.dart';
import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen(this.availableCategories, {Key? key})
      : super(key: key);
  
  final List<Category> availableCategories;

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(25),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: availableCategories.map((cat) => CategoryItem(cat)).toList(),
    );
  }
}
