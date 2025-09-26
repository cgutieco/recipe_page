import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:recipe_page/domain/usecases/get_local_recipe.dart';
import 'package:recipe_page/models/recipe.dart';
import 'package:recipe_page/theme/colors.dart';
import 'package:recipe_page/theme/sizes.dart';
import 'package:recipe_page/widgets/atoms/app_paragraph.dart';
import 'package:recipe_page/widgets/atoms/app_subtitle.dart';
import 'package:recipe_page/widgets/atoms/app_title.dart';
import 'package:recipe_page/widgets/atoms/bullet_dot.dart';
import 'package:recipe_page/widgets/atoms/list_item.dart';
import 'package:recipe_page/widgets/molecules/list_items.dart';
import 'package:recipe_page/widgets/molecules/list_section.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({super.key});

  @override
  Widget build(BuildContext context) {
    final getLocalRecipe = GetIt.I<GetLocalRecipe>();

    return FutureBuilder<Recipe>(
      future: getLocalRecipe('lib/data/simple_omelette_recipe.json'),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }
        final recipe = snapshot.data;
        if (recipe == null) {
          return const Center(child: Text('No se pudo cargar la receta.'));
        }

        return Card(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('lib/assets/images/image-omelette.jpeg'),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppSpacing.sp500,
                    horizontal: AppSpacing.sp400,
                  ),
                  child: Column(
                    children: [
                      AppTitle(label: recipe.title),
                      SizedBox(height: AppSpacing.sp300),
                      AppParagraph(label: recipe.description),
                      SizedBox(height: AppSpacing.sp400),
                      ListSection(
                        title: AppSubtitle(label: 'Ingredients'),
                        items: ListItems(
                          items: [
                            for (final ingredient in recipe.ingredients)
                              ListItem(
                                listMarker: BulletDot(),
                                child: AppParagraph(label: ingredient),
                              ),
                          ],
                        ),
                      ),
                      SizedBox(height: AppSpacing.sp400),
                      Divider(thickness: 1, color: AppColor.stone150),
                      SizedBox(height: AppSpacing.sp400),
                      ListSection(
                        title: AppSubtitle(label: 'Instructions'),
                        items: ListItems(
                          items: [
                            for (final step in recipe.instructions.instructions)
                              ListItem(
                                listMarker: BulletDot(),
                                child: AppParagraph(label: step.instruction),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
