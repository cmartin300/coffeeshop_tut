import 'package:coffeeshop_tut/models/shop_model.dart';
import 'package:coffeeshop_tut/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const CoffeShopApp());
}

class CoffeShopApp extends StatelessWidget {
  const CoffeShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Shop(),
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        );
      },
    );
  }
}
