class PreparationTimeItem {
  PreparationTimeItem({required this.description, required this.time});

  final String description;
  final String time;

  factory PreparationTimeItem.fromJson(Map<String, dynamic> json) =>
      PreparationTimeItem(description: json["description"], time: json["time"]);
}
