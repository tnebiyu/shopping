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
