
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Product{
  int id;
  String name;
  double price;
  var color;

  Product({required this.id,required this.name,required this.color, required this.price} );
}
Product product = new Product(id: 4, name: 'orange4',color: Colors.blueGrey, price: 3.5);
Product product1 = new Product(id: 2, name: 'Orange2',color: Colors.blueGrey, price: 4);
Product product2 = new Product(id: 3, name: 'Orange3',color: Colors.blueGrey, price: 4.5);
Product produc3 = new Product(id: 1, name: "organge",color: Colors.blueGrey, price: 3);

class Category{
  String name;
  List<Product> products;

  Category({required this.name,required this.products});
}
Category category = new Category(name: 'Menu1', products: [product,product1,produc3, product2]);
Category category2 = new Category(name: 'Menu2', products: [product,product1,produc3, product2]);
Category categor3 = new Category(name: 'Menu3', products: [product,product1,produc3, product2]);
Category categor4 = new Category(name: 'Menu4', products: [product,product1,produc3, product2]);

class ItemCart{
  Product product;
  int quanitity;

  ItemCart(this.product, this.quanitity);
}