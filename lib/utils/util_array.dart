import 'package:flutter/material.dart';
import 'package:recipe_page/theme/sizes.dart';

class UtilArray {
  static List<Widget> interleaveSeparators({
    required List<Widget> items,
    double? gap,
  }) {
    final result = <Widget>[];
    for (var i = 0; i < items.length; i++) {
      result.add(items[i]);
      final isLast = i == items.length - 1;
      if (!isLast) {
        result.add(SizedBox(height: gap ?? AppSpacing.sp200));
      }
    }
    return result;
  }
}
