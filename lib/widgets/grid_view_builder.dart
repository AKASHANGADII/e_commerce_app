import 'package:e_commerce_app/screens/product_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products_provider.dart';

class GridViewBuilder extends StatelessWidget {
  String catId;
  GridViewBuilder({required this.catId});

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final loadedProducts = productsData.products
        .where((element) => element.categoriesId.contains(catId))
        .toList();
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 5,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15),
      itemCount: loadedProducts.length,
      itemBuilder: (context, i) => GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, ProductDetailScreen.routeName,arguments: [loadedProducts[i].title,loadedProducts[i].imageUrl,loadedProducts[i].discription,loadedProducts[i].price]);
        },
        child: GridTile(
          footer: Container(
            color: Colors.black87,
            child: Text(
              loadedProducts[i].discription,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              softWrap: true,
              style: TextStyle(color: Colors.white),
            ),
          ),
          child: Image.network(loadedProducts[i].imageUrl),
        ),
      ),
    );
  }
}
