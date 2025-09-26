import 'package:flutter/material.dart';
import 'package:recipe_page/widgets/organisms/recipe_card.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Center(child: RecipeCard())),
    );
  }
}
