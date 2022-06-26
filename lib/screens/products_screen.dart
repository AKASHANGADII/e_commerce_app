import 'package:e_commerce_app/widgets/grid_view_builder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products_provider.dart';

class ProductScreen extends StatelessWidget {
  static const routeName="/product-screen";
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArg=ModalRoute.of(context)?.settings.arguments as List;
    final catId = routeArg[1];
    final catName=routeArg[0];
    return Scaffold(
      appBar: AppBar(
        title: Text(catName),
      ),
      body: ChangeNotifierProvider(
          create: (BuildContext context)=>Products(),
          child: GridViewBuilder(catId: catId,),),
    );
  }
}
