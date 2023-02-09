import 'package:flutter/material.dart';
import 'package:shopping/Screen/home.dart';
import 'package:shopping/data_manager.dart';
import 'package:shopping/data_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Product product = new Product(id: 4, name: 'orange4',color: Colors.blueGrey, price: 3.5);
    Product product1 = new Product(id: 2, name: 'Orange2',color: Colors.blueGrey, price: 4);
    Product product2 = new Product(id: 3, name: 'Orange3',color: Colors.blueGrey, price: 4.5);
    Product produc3 = new Product(id: 1, name: "organge",color: Colors.blueGrey, price: 3);
    Catagory catagory = new Catagory(name: 'Menu1', products: [product,product1,produc3, product2]);
    Catagory Catagory2 = new Catagory(name: 'Menu2', products: [product,product1,produc3, product2]);
    Catagory categor3 = new Catagory(name: 'Menu3', products: [product,product1,produc3, product2]);
    Catagory categor4 = new Catagory(name: 'Menu4', products: [product,product1,produc3, product2]);


    return MaterialApp(
      title: 'Shopping App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blueGrey,
        )
      ),
      home: Home(),

    );
  }
}
