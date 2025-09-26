class PreparationTime {
  PreparationTime({
    required this.description,
    required this.time,
  });
  final String description;
  final String time;
  factory PreparationTime.fromJson(Map<String, dynamic> json) => PreparationTime(
    description: json["description"],
    time: json["time"],
  );
}
