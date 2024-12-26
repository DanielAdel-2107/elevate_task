import 'package:elevate_task/view_models/product_provider.dart';
import 'package:elevate_task/views/filter/widgets/filter_screen_app_bar.dart';
import 'package:elevate_task/views/filter/widgets/filter_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(builder: (context, provider, child) {
      return Scaffold(
        appBar: FilterScreenAppBar(
          provider: provider,
        ),
        body: FilterScreenBody(
          provider: provider,
        ),
      );
    });
  }
}
