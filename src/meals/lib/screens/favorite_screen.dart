import 'package:flutter/material.dart';
import 'package:meals/components/meal_item.dart';
import 'package:meals/models/meal.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen(this.favoritesMeals, {Key? key}) : super(key: key);
  final List<Meal> favoritesMeals;

  @override
  Widget build(BuildContext context) {
    if (favoritesMeals.isEmpty) {
      return Center(
        child: Text('Minhas refeições favoritas!'),
      );
    } else {
      return ListView.builder(
        itemCount: favoritesMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(meal: favoritesMeals[index]);
        },
      );
    }
  }
}
