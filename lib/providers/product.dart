import 'package:flutter/material.dart';


class Product{
  String productId;
  List categoriesId;
  String title;
  String discription;
  double price;
  String imageUrl;

  Product({required this.productId,required this.categoriesId,required this.title,required this.discription,required this.price,required this.imageUrl});
}