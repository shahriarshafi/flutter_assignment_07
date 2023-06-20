import 'package:flutter/material.dart';
import 'products.dart';

class Cart extends StatelessWidget {
  List<Product> products;
  Cart({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    int totalProduct = 0;
    for(var product in products){
      totalProduct = totalProduct + product.counter;
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Total Products: $totalProduct!"),
      ),
    );
  }
}