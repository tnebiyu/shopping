import 'package:flutter/material.dart';
import 'package:shopping/Screen/menu_page.dart';
import 'package:shopping/data_manager.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 // const Home({Key? key}) : super(key: key);
  int _currentIndex =0;

  @override
  Widget build(BuildContext context) {
    var dataManager = DataManager();

    late Widget currentPage;
    switch (_currentIndex){
      case 0:
        currentPage = Menu(dataManager: dataManager);
        break;
      case 1:
        currentPage = Menu(dataManager: dataManager);
        break;
      case 2:
        currentPage = Menu(dataManager: dataManager);
    }
    return Scaffold(
      appBar: AppBar(title:Text( 'Ariob Shopping App'),),
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.red,
        onTap: (index){
          setState(() {
            _currentIndex =index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.flag), label: 'Flag'),

        ],
      ),
    );
  }
}
