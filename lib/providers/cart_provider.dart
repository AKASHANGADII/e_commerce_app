import 'package:e_commerce_app/widgets/cart.dart';
import 'package:flutter/material.dart';

class CartItems with ChangeNotifier{
  List<Cart> _items=[];

  List<Cart> get items{
    return [..._items];
  }

  void addToCart(String name,String id,String url,double price){
    _items.add(Cart(id: id, name: name, price: price, url: url));
    notifyListeners();
    print(_items[0].url);
    print("added");
  }
}