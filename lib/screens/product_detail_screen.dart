import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Retrieve product data and color from route arguments
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final Product product = args['product'];
    final Color backgroundColor = args['color'];

    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Column(
        children: [
          // Header with background color matching the product card
          Container(
            width: double.infinity,
            height: 200,
            color: backgroundColor,
            alignment: Alignment.center,
            child: Text(
              product.name.toLowerCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
          // Product details section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(product.name,
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text(product.description,
                    style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
                SizedBox(height: 10),
                Text('Price: \$${product.price}',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
                // Favorite and rating icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: List.generate(
                    3,
                    (index) => Icon(Icons.star_border,
                        color: Colors.red, size: 30),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
