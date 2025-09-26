class NutritionFactsItem {
  NutritionFactsItem({required this.info, required this.value});

  final String info;
  final String value;

  factory NutritionFactsItem.fromJson(Map<String, dynamic> json) {
    return NutritionFactsItem(info: json['info'], value: json['value']);
  }
}
