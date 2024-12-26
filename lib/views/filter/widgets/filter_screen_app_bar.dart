import 'package:elevate_task/utils/colors/app_colors.dart';
import 'package:elevate_task/view_models/product_provider.dart';
import 'package:flutter/material.dart';

class FilterScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const FilterScreenAppBar({
    super.key,
    required this.provider,
  });
  final ProductProvider provider;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Filters'),
      actions: [
        TextButton(
          onPressed: () {
            provider.resetFilters();
          },
          child: Text(
            'Reset',
            style: TextStyle(color: AppColors.primaryColor),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
