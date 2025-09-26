import 'package:flutter/material.dart';
import 'package:recipe_page/utils/util_array.dart';

class ListItems extends StatelessWidget {
  const ListItems({super.key, required this.items});

  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    final separatedItems = UtilArray.interleaveSeparators(items: items);

    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [...separatedItems],
      ),
    );
  }
}
