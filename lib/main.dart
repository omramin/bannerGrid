import 'package:banner_grid/screens/products_grid_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Decor App',
      theme: ThemeData(
        fontFamily: 'Poppins', 
        textTheme: const TextTheme(

          bodyMedium: TextStyle(
            fontFamily: 'Poppins',
          ),
        ),       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProductsGrid(),
    );
  }
}

