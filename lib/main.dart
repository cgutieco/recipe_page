import 'package:flutter/material.dart';
import 'package:recipe_page/pages/recipe_page.dart';
import 'package:recipe_page/di/injector.dart';

void main() {
  configureDependencies();
  runApp(const RecipePageApp());
}

class RecipePageApp extends StatelessWidget {
  const RecipePageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Recipe App',
      debugShowCheckedModeBanner: false,
      home: RecipePage(),
    );
  }
}
