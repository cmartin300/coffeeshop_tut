import 'package:coffeeshop_tut/components/bottom_nav_bar.dart';
import 'package:coffeeshop_tut/const.dart';
import 'package:coffeeshop_tut/screens/shop_screen.dart';
import 'package:flutter/material.dart';

import 'cart_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _screens = [
    const ShopScreen(),
    const CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBGColor,
      bottomNavigationBar: MyCustomBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _screens[_selectedIndex],
    );
  }
}
