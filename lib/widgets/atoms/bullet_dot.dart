import 'package:flutter/material.dart';
import 'package:recipe_page/theme/colors.dart';

class BulletDot extends StatelessWidget {
  const BulletDot({
    super.key,
    this.color = AppColor.brown800,
    this.diameter = 4,
  });

  final Color? color;
  final double? diameter;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: diameter,
      height: diameter,
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
