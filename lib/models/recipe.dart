import 'package:recipe_page/models/preparation_time.dart';

import 'instructions.dart';
import 'nutrition.dart';

class Recipe {
  Recipe({
    required this.title,
    required this.description,
    required this.preparationTime,
    required this.ingredients,
    required this.instructions,
    required this.nutrition,
  });

  final String title;
  final String description;
  final List<PreparationTime> preparationTime;
  final List<String> ingredients;
  final Instructions instructions;
  final Nutrition nutrition;

  factory Recipe.fromJson(Map<String, dynamic> json) {
    final recipeData = json['data']?['recipe'] ?? json;

    return Recipe(
      title: recipeData["title"],
      description: recipeData["description"],
      preparationTime: List<PreparationTime>.from(
        recipeData["preparationTime"].map((x) => PreparationTime.fromJson(x)),
      ),
      ingredients: List<String>.from(recipeData["ingredients"].map((x) => x)),
      instructions: Instructions.fromJson(recipeData["instructions"]),
      nutrition: Nutrition.fromJson(recipeData["nutrition"]),
    );
  }
}
