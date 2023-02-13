
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Product{
  int id;
  String name;
  double price;
  var color;

  Product({required this.id,required this.name,required this.color, required this.price} );
  // factory Product.fromJson(Map<String, dynamic> json) {
  //   return Product(
  //       id: json['id'] as int,
  //       name: json['name'] as String,
  //       price: json['price'] as double,
  //        color: json['color'] as String);
  // }
}
List<Product> products = List.generate(demoData.length, (index) => Product(id: demoData[index]['id'], name: demoData[index]['name'], color: demoData[index]['color'], price:demoData[index]['price']));
List demoData =[
  {
    "id" : 1,
    "name": "cyan",
    "price": 12,
    "color": Colors.cyan,

  },
  {
    "id" : 2,
    "name": "yellow",
    "price": 11,
    "color": Colors.yellow,

  },
  {
    "id" : 3,
    "name": "blue",
    "price": 15,
    "color": Colors.blue,

  },
  {
    "id" : 4,
    "name": "green",
    "price": 11,
    "color": Colors.greenAccent,

  },
];


class Catagory{
  String name;
  List<Product> products;

  Catagory({required this.name,required this.products});

}
List<Catagory> catagories = List.generate(catagory.length, (index) => Catagory(name: catagory[index]['name'], products: catagory[index][Product]));
List catagory = [
  {
    "name" : "cat",
    Product : products.indexWhere((element) => element.id == 1)
  },
  {
    "name" : "dog",
    Product : products.indexWhere((element) => element.id == 2)
  },
  {
    "name" : "cow",
    Product : products.indexWhere((element) => element.id == 3)
  },
  {
    "name" : "rat",
    Product : products.indexWhere((element) => element.id == 4)
  },
];

class ItemCart{
  Product product;
  int quanitity;

  ItemCart(this.product, this.quanitity);
}