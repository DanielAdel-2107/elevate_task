import 'package:elevate_task/view_models/product_provider.dart';
import 'package:flutter/material.dart';

class FilterPriceCategory extends StatelessWidget {
  const FilterPriceCategory({
    super.key,
    required this.provider,
  });
  final ProductProvider provider;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Price Range",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        RangeSlider(
          values: RangeValues(provider.minPrice, provider.maxPrice),
          min: 0,
          max: 2000,
          divisions: 40,
          labels: RangeLabels("\$${provider.minPrice.toInt()}",
              "\$${provider.maxPrice.toInt()}"),
          onChanged: (values) {
            provider.setPrice(values);
          },
        ),
      ],
    );
  }
}
