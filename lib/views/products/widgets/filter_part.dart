import 'package:elevate_task/view_models/product_provider.dart';
import 'package:elevate_task/views/filter/screens/filter_screen.dart';
import 'package:flutter/material.dart';

class FilterPart extends StatelessWidget {
  const FilterPart({
    super.key,
    required this.provider,
  });

  final ProductProvider provider;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: SearchBar(
          elevation: WidgetStatePropertyAll(0),
          hintText: 'Search by product name',
          onChanged: (value) {
            provider.searchProducts(value);
          },
        )),
        IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => FilterScreen()));
          },
          icon: Icon(Icons.filter_alt_rounded),
        )
      ],
    );
  }
}
