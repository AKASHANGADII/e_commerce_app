import 'package:e_commerce_app/providers/Categories_provider.dart';
import 'package:e_commerce_app/providers/cart_provider.dart';
import 'package:e_commerce_app/screens/cart_screen.dart';
import 'package:e_commerce_app/screens/products_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoriesData=Provider.of<Categories>(context);
    final categories=categoriesData.categories;
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.blue,
            width: double.infinity,
            height: MediaQuery.of(context).size.height*0.15,
            child: const Center(
              child:Text("App Name"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, CartScreen.routeName);
            },
            child: Container(
              child: Text("My Cart"),
            ),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height*0.8,
            child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (ctx,i)=>GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, ProductScreen.routeName,arguments: [categories[i].text,categories[i].categoryId]);
                },
                child: ListTile(
                title: Text(categories[i].text),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
