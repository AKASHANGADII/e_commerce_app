import 'package:e_commerce_app/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/cart.dart';

class CartScreen extends StatefulWidget {
  static const routeName="/cart-screen";

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  Widget build(BuildContext context) {
    final cartData = Provider.of<CartItems>(context);
    List<Cart>loadedCart = cartData.items;
    print(loadedCart.length);
    int num=1;
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: Visibility(
        visible: false,
        child: Center(
          child: Text("No Product Added Yet!......"),
        ),
        replacement: ListView.builder(
          itemCount: loadedCart.length,
          itemBuilder: (context, i) => Card(
              child: Container(
                height: 250,
                width: 150,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(loadedCart[i].name,style: TextStyle(fontSize: 25),),
                            Text("Quantity:"),
                            Card(
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      if (num>1) {
                                          num=num-1;
                                      }
                                    },
                                    child: Container(
                                      child: Icon(Icons.remove),
                                      color: Colors.orange,
                                    ),
                                  ),
                                  Text(num.toString()),
                                  GestureDetector(
                                    onTap: (){
                                      if (num<10) {
                                          num=num+1;
                                      }
                                    },
                                    child: Container(
                                      child: Icon(Icons.add),
                                      color: Colors.orange,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              child: Image.network(loadedCart[i].url),
                            )
                          ],
                        )
                      ],
                    ),
                    Expanded(child: Container(child: Text("Buy Now"),),),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
  }
}
