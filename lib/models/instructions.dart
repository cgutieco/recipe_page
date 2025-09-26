import 'instructions_item.dart';

class Instructions {
  Instructions({required this.instructions});

  final List<InstructionsItem> instructions;

  factory Instructions.fromJson(List<dynamic> json) => Instructions(
    instructions: List<InstructionsItem>.from(
      json.map((x) => InstructionsItem.fromJson(x)),
    ),
  );
}