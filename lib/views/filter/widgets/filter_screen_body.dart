import 'package:elevate_task/view_models/product_provider.dart';
import 'package:elevate_task/views/filter/widgets/filter_category_part.dart';
import 'package:elevate_task/views/filter/widgets/filter_price_part.dart';
import 'package:flutter/material.dart';

class FilterScreenBody extends StatelessWidget {
  const FilterScreenBody({
    super.key,
    required this.provider,
  });
  final ProductProvider provider;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FilterCategoryPart(
            provider: provider,
          ),
          SizedBox(height: 16),
          FilterPriceCategory(provider: provider),
          SizedBox(height: 16),
          Spacer(),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    provider.filterProducts().then(() {
                      Navigator.pop(context);
                    });
                  },
                  child: Text("Apply Filters"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
