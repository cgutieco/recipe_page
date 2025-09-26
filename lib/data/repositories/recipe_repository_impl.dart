import 'package:recipe_page/models/recipe.dart';
import '../../domain/repositories/recipe_repository.dart';
import '../datasources/recipe_asset_data_source.dart';

class RecipeRepositoryImpl implements RecipeRepository {
  RecipeRepositoryImpl({required RecipeLocalDataSource localDataSource})
      : _localDataSource = localDataSource;

  final RecipeLocalDataSource _localDataSource;

  @override
  Future<Recipe> getLocalRecipe(String assetPath) {
    return _localDataSource.loadFromAsset(assetPath);
  }
}
