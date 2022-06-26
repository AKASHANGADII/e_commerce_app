import 'package:e_commerce_app/providers/Categories_provider.dart';
import 'package:e_commerce_app/screens/home_screen.dart';
import 'package:e_commerce_app/screens/products_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(

      create: (BuildContext context) =>Categories(),
      child: MaterialApp(
        routes: {
          ProductScreen.routeName:(ctx)=>ProductScreen(),
        },
        home: HomeScreen(),
      ),

    );

  }
}
