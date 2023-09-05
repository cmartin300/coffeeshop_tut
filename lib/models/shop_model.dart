import 'package:coffeeshop_tut/models/drink_model.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  final List<Drink> _shop = [
    Drink(
      drinkName: 'Black Coffee',
      drinkPrice: '2.75',
      imagePath: 'assets/images/black.png',
    ),
    Drink(
      drinkName: 'Single Espresso',
      drinkPrice: '3.50',
      imagePath: 'assets/images/espresso.png',
    ),
    Drink(
      drinkName: 'Iced Coffee',
      drinkPrice: '3.25',
      imagePath: 'assets/images/iced-coffee.png',
    ),
    Drink(
      drinkName: 'Latte',
      drinkPrice: '5.00',
      imagePath: 'assets/images/latte.png',
    ),
  ];

  final List<Drink> _cart = [];

  List<Drink> get shop => _shop;
  List<Drink> get cart => _cart;

  void addToCart(Drink drink) {
    _cart.add(drink);
    notifyListeners();
  }

  void removeFromCart(Drink drink) {
    _cart.remove(drink);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (var i = 0; i < _cart.length; i++) {
      totalPrice += double.parse(_cart[i].drinkPrice);
    }

    return totalPrice.toStringAsFixed(2);
  }
}
