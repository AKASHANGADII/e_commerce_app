import 'package:e_commerce_app/providers/categories.dart';
import 'package:flutter/material.dart';

class Categories with ChangeNotifier{
  List<Category> _categories=[
    Category(categoryId: "c31003c19bc840dbbd329d5af753079f", text: "Mobiles & Accessories"),
    Category(categoryId: "d38a55185e0b45cabde119fef0b0b165", text: "Mobiles"),
    Category(categoryId: "3997b81d2a614a999e191a59979da254", text: "SAMSUNG Mobiles"),
  ];
}