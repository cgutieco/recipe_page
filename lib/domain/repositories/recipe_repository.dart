import 'package:recipe_page/models/recipe.dart';

abstract class RecipeRepository {
  Future<Recipe> getLocalRecipe(String assetPath);
}
