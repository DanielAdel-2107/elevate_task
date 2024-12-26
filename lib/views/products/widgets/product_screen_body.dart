import 'package:elevate_task/view_models/product_provider.dart';
import 'package:elevate_task/views/products/widgets/custom_grid_view.dart';
import 'package:elevate_task/views/products/widgets/filter_part.dart';
import 'package:elevate_task/views/products/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductScreenBody extends StatelessWidget {
  const ProductScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Consumer<ProductProvider>(
        builder: (context, provider, child) {
          return provider.productList.isEmpty
              ? Loading()
              : SafeArea(
                  child: Column(
                    children: [
                      FilterPart(
                        provider: provider,
                      ),
                      Expanded(
                        child: CustomGridView(
                          provider: provider,
                        ),
                      ),
                    ],
                  ),
                );
        },
      ),
    );
  }
}
