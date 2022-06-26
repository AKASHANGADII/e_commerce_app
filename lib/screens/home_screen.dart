import 'package:e_commerce_app/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

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
      body: GridViewBuilder(),
    );
  }
}


