import 'package:recipe_page/models/recipe.dart';

import '../repositories/recipe_repository.dart';

class GetLocalRecipe {
  const GetLocalRecipe(this._repository);

  final RecipeRepository _repository;

  Future<Recipe> call(String assetPath) {
    return _repository.getLocalRecipe(assetPath);
  }
}
