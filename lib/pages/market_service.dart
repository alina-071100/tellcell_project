import 'package:flutter/material.dart';

void main() {
  runApp(MyMarketApp());
}

class MyMarketApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      
    );
  }
}

// class MarketPage extends StatelessWidget {
//   final List<Product> products = [
//     Product('Product 1', 'Description 1', 20.0),
//     Product('Product 2', 'Description 2', 30.0),
//     Product('Product 3', 'Description 3', 25.0),
//         Product('Product 1', 'Description 1', 20.0),
//     Product('Product 2', 'Description 2', 30.0),
//     Product('Product 3', 'Description 3', 25.0),
//         Product('Product 1', 'Description 1', 20.0),
//     Product('Product 2', 'Description 2', 30.0),
//     Product('Product 3', 'Description 3', 25.0),
//         Product('Product 1', 'Description 1', 20.0),
//     Product('Product 2', 'Description 2', 30.0),
//     Product('Product 3', 'Description 3', 25.0),
//         Product('Product 1', 'Description 1', 20.0),
//     Product('Product 2', 'Description 2', 30.0),
//     Product('Product 3', 'Description 3', 25.0),
//     // Add more products as needed
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//       backgroundColor: Colors.white,

//         title:  const Text('BON',

//         style: TextStyle(color: Colors.black),
//          ),

//         elevation: 0,
//         ),
//       body: ListView.builder(
//         itemCount: products.length,
//         itemBuilder: (BuildContext context, int index) {
//           return ProductCard(product: products[index]);
//         },
//       ),
//       );

//   }
// }

class Product {
  final String name;
  final String description;
  final double price;

  Product(this.name, this.description, this.price);
}

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: [
          ListTile(
            title: Text(product.name),
            subtitle: Text(product.description),
            trailing: Text('\$${product.price.toStringAsFixed(2)}'),
          ),
          // ElevatedButton(
          //   onPressed: () {
          //               //   },
          //   child: Text('Add to Cart'),
          // ),
        ],
      ),
    );
  }
}
