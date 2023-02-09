
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Product{
  int id;
  String name;
  double price;
  var color;

  Product({required this.id,required this.name,required this.color, required this.price} );
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'] as int,
        name: json['name'] as String,
        price: json['price'] as double,
         color: json['color'] as String);
  }
}

class Catagory{
  String name;
  List<Product> products;

  Catagory({required this.name,required this.products});

}

class ItemCart{
  Product product;
  int quanitity;

  ItemCart(this.product, this.quanitity);
}