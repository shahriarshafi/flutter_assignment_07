import 'package:flutter/material.dart';
import 'package:flutter_assignment_07/products.dart';

import 'cart.dart';

class ProductLists extends StatefulWidget {
  const ProductLists({super.key});

  @override
  State<ProductLists> createState() => _ProductListsState();
}

class _ProductListsState extends State<ProductLists> {

  static List<Product> items = [
    Product(price: 10, name: 'Product 1'),
    Product(price: 15, name: 'Product 2'),
    Product(price: 20, name: 'Product 3'),
    Product(price: 25, name: 'Product 4'),
    Product(price: 30, name: 'Product 5'),
    Product(price: 35, name: 'Product 6'),
    Product(price: 40, name: 'Product 7'),
    Product(price: 45, name: 'Product 8'),
    Product(price: 50, name: 'Product 9'),
    Product(price: 55, name: 'Product 10'),
    Product(price: 60, name: 'Product 11'),
    Product(price: 65, name: 'Product 12'),
    Product(price: 70, name: 'Product 13'),
    Product(price: 75, name: 'Product 14'),
    Product(price: 80, name: 'Product 15'),
    Product(price: 85, name: 'Product 16'),
    Product(price: 90, name: 'Product 17'),
    Product(price: 95, name: 'Product 18'),
    Product(price: 100, name: 'Product 19'),
    Product(price: 105, name: 'Product 20'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Cart(products: items),));
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.shopping_cart),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index].name),
            subtitle: Text("\$${items[index].price}"),
            trailing: FittedBox(
              child: Column(
                children: [
                  Text("Counter: ${items[index].counter}"),
                  ElevatedButton(
                      onPressed: (){
                        setState(() {
                          items[index].myCounter();
                          if(items[index].counter == 5){
                            showDialog(context: context, builder: (context) {
                              return AlertDialog(
                                title: const Text("Congratulations!"),
                                content: Text("You've bought 5 ${items[index].name}"),
                                actions: [
                                  TextButton(
                                      onPressed: (){
                                        Navigator.pop(context);
                                      },
                                      child: const Text("OK"))
                                ],
                              );
                            },);
                          }
                        });

                      },
                      child: const Text("Buy Now")
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}