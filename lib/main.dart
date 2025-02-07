import 'package:flutter/material.dart';
import 'screens/product_list_screen.dart';
import 'screens/product_detail_screen.dart';

void main() {
  runApp(MyApp());
}

/// MyApp is the root widget of the application.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => ProductListScreen(),
        '/details': (context) => ProductDetailScreen(),
      },
    );
  }
}
