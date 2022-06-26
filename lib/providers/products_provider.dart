import 'package:e_commerce_app/providers/product.dart';
import 'package:flutter/material.dart';

class Products with ChangeNotifier{
  List<Product> _products=[
    Product(productId: "becedfd3d4a04cf787b78611ab2d8ccf",categoriesId: ["c31003c19bc840dbbd329d5af753079f","d38a55185e0b45cabde119fef0b0b165","a5a4c19112844d5b888bb9a819674cc7"],title: "SAMSUNG Galaxy F12 (Sky Blue, 64 GB)", discription: "The Samsung Galaxy F12 features a stylish design and innovative features so that you can enjoy using the mobile phone for all that you need. Thanks to its 6000 mAh battery, you will have a blast using your phone for a long time while you stream content and much more. It provides surround sound with Dolby Atmos so that you can delve into a world of rich music. And, itâ€™s equipped with features that ensure the protection of your mobile phone.",price: 9499,imageUrl: "https://rukminim1.flixcart.com/image/312/312/kn22m4w0/mobile/9/k/s/galaxy-f12-sm-f127glbiins-samsung-original-imagftmhhhvghq7w.jpeg"),
  ];
  List<Product> get products{
    return [..._products];
  }
}