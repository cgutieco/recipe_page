import 'package:flutter/material.dart';
import 'package:recipe_page/theme/sizes.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.listMarker,
    required this.child,
    this.listMarkerPosition,
  });

  final Widget listMarker;
  final Widget child;
  final CrossAxisAlignment? listMarkerPosition;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: listMarkerPosition ?? CrossAxisAlignment.center,
      children: [
        const SizedBox(width: AppSpacing.sp100),
        listMarker,
        const SizedBox(width: AppSpacing.sp200),
        Expanded(child: child),
      ],
    );
  }
}
