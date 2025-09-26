import 'package:get_it/get_it.dart';
import 'package:recipe_page/data/datasources/recipe_asset_data_source.dart';
import 'package:recipe_page/data/repositories/recipe_repository_impl.dart';
import 'package:recipe_page/domain/repositories/recipe_repository.dart';
import 'package:recipe_page/domain/usecases/get_local_recipe.dart';

final GetIt getIt = GetIt.instance;

void configureDependencies() {
  // Data sources
  getIt.registerLazySingleton<RecipeLocalDataSource>(
    () => const RecipeAssetDataSource(),
  );

  // Repositories
  getIt.registerLazySingleton<RecipeRepository>(
    () => RecipeRepositoryImpl(localDataSource: getIt()),
  );

  // Use cases
  getIt.registerLazySingleton<GetLocalRecipe>(
    () => GetLocalRecipe(getIt()),
  );
}
