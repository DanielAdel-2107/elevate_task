import 'package:elevate_task/view_models/product_provider.dart';
import 'package:flutter/material.dart';

class FilterCategoryPart extends StatelessWidget {
  const FilterCategoryPart({
    super.key,
    required this.provider,
  });
  final ProductProvider provider;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Category",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Wrap(
          spacing: 8,
          children: provider.categories.map((category) {
            return ChoiceChip(
              label: Text(category),
              selected: provider.selectedCategory == category,
              onSelected: (selected) {
                provider.selectCategory(category);
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
