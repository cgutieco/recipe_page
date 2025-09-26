import 'package:flutter/material.dart';

import 'package:recipe_page/theme/sizes.dart';

class ListSection extends StatelessWidget {
  const ListSection({
    super.key,
    required this.title,
    required this.items,
    this.gap = AppSpacing.sp300,
  });

  final Widget title;
  final Widget items;
  final double? gap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title,
        SizedBox(height: gap),
        items,
      ],
    );
  }
}
