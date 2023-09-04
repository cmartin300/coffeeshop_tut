import 'package:coffeeshop_tut/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CoffeShopApp());
}

class CoffeShopApp extends StatelessWidget {
  const CoffeShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
