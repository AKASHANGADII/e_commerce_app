import 'package:e_commerce_app/widgets/products_grid.dart';
import 'package:flutter/material.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15
    ), itemBuilder: (context,i)=>ProductsGrid(),
    );
  }
}

