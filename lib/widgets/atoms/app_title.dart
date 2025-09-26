import 'package:flutter/material.dart';
import 'package:recipe_page/theme/text_styles.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(label, style: Theme.of(context).textTheme.textPreset1);
  }
}
