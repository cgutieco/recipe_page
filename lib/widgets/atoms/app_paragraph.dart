import 'package:flutter/material.dart';
import 'package:recipe_page/theme/text_styles.dart';

class AppParagraph extends StatelessWidget {
  const AppParagraph({super.key, required this.label, this.isBold = false});

  final String label;
  final bool isBold;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: isBold
          ? Theme.of(context).textTheme.textPreset4Bold
          : Theme.of(context).textTheme.textPreset4,
    );
  }
}
