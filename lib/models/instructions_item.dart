class InstructionsItem {
  InstructionsItem({required this.description, required this.instruction});

  final String description;
  final String instruction;

  factory InstructionsItem.fromJson(Map<String, dynamic> json) =>
      InstructionsItem(
        description: json['description'],
        instruction: json['instruction'],
      );
}
