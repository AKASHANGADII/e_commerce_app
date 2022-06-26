import 'package:e_commerce_app/providers/products_provider.dart';
import 'package:e_commerce_app/screens/cart_screen.dart';
import 'package:e_commerce_app/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cart_provider.dart';
import '../widgets/grid_view_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
      ),
      drawer: MainDrawer(),
      body: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (ctx) => Products()),
          ],
          child: GridViewBuilder(catId: "c31003c19bc840dbbd329d5af753079f",),),
    );
  }
}


