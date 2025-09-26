import 'nutrition_facts_item.dart';

class Nutrition {
  Nutrition({required this.description, required this.nutritionFacts});

  final String description;
  final List<NutritionFactsItem> nutritionFacts;

  factory Nutrition.fromJson(Map<String, dynamic> json) => Nutrition(
    description: json['description'],
    nutritionFacts: List<NutritionFactsItem>.from(
      (json['nutritionFacts'] as List).map(
        (x) => NutritionFactsItem.fromJson(x),
      ),
    ),
  );
}
