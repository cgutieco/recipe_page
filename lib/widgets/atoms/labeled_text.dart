import 'package:flutter/material.dart';
import 'package:recipe_page/theme/text_styles.dart';

class LabeledText extends StatelessWidget {
  const LabeledText({super.key, required this.label, required this.content});

  final String label;
  final String content;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '$label: ',
            style: Theme.of(context).textTheme.textPreset4Bold,
          ),
          TextSpan(
            text: content,
            style: Theme.of(context).textTheme.textPreset4,
          ),
        ],
      ),
    );
  }
}
