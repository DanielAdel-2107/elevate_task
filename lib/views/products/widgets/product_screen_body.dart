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
      child: SafeArea(
        child: Column(
          children: [
            FilterPart(),
            Expanded(
              child: CustomGridView(),
            ),
          ],
        ),
      ),
    );
  }
}
