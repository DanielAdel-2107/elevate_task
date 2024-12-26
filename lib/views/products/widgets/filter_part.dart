import 'package:flutter/material.dart';

class FilterPart extends StatelessWidget {
  const FilterPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: SearchBar(
          elevation: WidgetStatePropertyAll(0),
          hintText: 'Search by product name',
          onChanged: (value) {},
        )),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.filter_alt_rounded),
        )
      ],
    );
  }
}
