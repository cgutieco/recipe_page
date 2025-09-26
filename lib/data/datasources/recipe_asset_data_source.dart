import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:recipe_page/models/recipe.dart';

abstract class RecipeLocalDataSource {
  Future<Recipe> loadFromAsset(String assetPath);
}

class RecipeAssetDataSource implements RecipeLocalDataSource {
  const RecipeAssetDataSource();

  @override
  Future<Recipe> loadFromAsset(String assetPath) async {
    final raw = await rootBundle.loadString(assetPath);
    final Map<String, dynamic> jsonMap =
        json.decode(raw) as Map<String, dynamic>;

    final Map<String, dynamic> recipeJson =
        (jsonMap['data'] as Map<String, dynamic>)['recipe']
            as Map<String, dynamic>;

    return Recipe.fromJson(recipeJson);
  }
}
