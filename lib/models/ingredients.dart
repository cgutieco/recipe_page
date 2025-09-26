class Ingredients {
  Ingredients({required this.ingredients});

  final List<String> ingredients;

  factory Ingredients.fromJson(Map<String, dynamic> json) => Ingredients(
    ingredients: List<String>.from(json['ingredients'].map((x) => x)),
  );
}
