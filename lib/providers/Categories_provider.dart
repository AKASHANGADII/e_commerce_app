import 'package:e_commerce_app/providers/categories.dart';
import 'package:flutter/material.dart';

class Categories with ChangeNotifier{
  List<Category> _categories=[
    Category(categoryId: "c31003c19bc840dbbd329d5af753079f", text: "Mobiles & Accessories"),
    Category(categoryId: "d38a55185e0b45cabde119fef0b0b165", text: "Mobiles"),
    Category(categoryId: "3997b81d2a614a999e191a59979da254", text: "SAMSUNG Mobiles"),
    Category(categoryId: "a5a4c19112844d5b888bb9a819674cc7", text: "realme Mobiles"),
    Category(categoryId: "6910608b3a1647fb9e8020364d47a925", text: "APPLE Mobiles"),
    Category(categoryId: "b6286b03057f40fda5d970e3d97b3c76", text: "Infinix Mobiles"),
    Category(categoryId: "2612f050c0b8425d880f5b74897ba1b2", text: "POCO Mobiles"),
    Category(categoryId: "cf847ad5ef314da7b8e176ef286e4d8c", text: "REDMI Mobiles"),
    Category(categoryId: "1c272064a9a549aca3e18c84858236a1", text: "OPPO Mobiles"),
    Category(categoryId: "fabe3cc5cfed457a8dfbf5054c4d3706", text: "LAVA Mobiles"),
    Category(categoryId: "9cf782a9cd7b4b06ae1f7b199e2164f1", text: "Micromax Mobiles"),
  ];

  List<Category> get categories{
    return [..._categories];
  }
}

