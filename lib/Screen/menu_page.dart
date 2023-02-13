import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shopping/data_manager.dart';

import '../data_model.dart';
class Menu extends StatelessWidget {
  DataManager? dataManager;



  Menu({required this.dataManager});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<Catagory>>(
         future: dataManager!.getMenu(),
          builder:(context, snapshot){
            if(snapshot.hasData){
return ListView.builder(
    itemCount: catagories.length,
    itemBuilder: (context, index){
      return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    Padding(
    padding: const EdgeInsets.only(
    top: 32.0, bottom: 8.0, left: 8.0),
    child: Text(
    catagories[index].name,
    style: TextStyle(color: Colors.brown.shade400),
    ),
    ),
    ListView.builder(
    shrinkWrap: true,
    physics: const ClampingScrollPhysics(),
    itemCount: catagories[index].products.length,
    itemBuilder: (context, proIndex) {
    var product =catagories[index].products[proIndex];
    return MenuItem(
    product: product,
    onAdd: (addedProduct) => dataManager!.cartAdd(addedProduct),
    );
    },
    )

    ],
    );
    });

            }
            else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            else
            return CircularProgressIndicator();
          }),
    );
  }
}
class MenuItem extends StatelessWidget {
  final Product product;
  final Function onAdd;
  const MenuItem({Key? key, required this.product, required this.onAdd})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Column(
          children: [
            Card(
              color: product.color,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        product.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("\$${product.price.toStringAsFixed(2)} ea"),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        onAdd(product);
                      },
                      child: const Text("Add"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
