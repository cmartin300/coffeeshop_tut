import 'package:coffeeshop_tut/models/drink_model.dart';
import 'package:coffeeshop_tut/models/shop_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrinkTile extends StatelessWidget {
  final Drink drink;
  const DrinkTile({
    super.key,
    required this.drink,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.brown.shade100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Image.asset(
          drink.imagePath,
          height: 36,
        ),
        title: Text(drink.drinkName),
        subtitle: Text(drink.drinkPrice),
        trailing: MaterialButton(
          onPressed: () {
            Provider.of<Shop>(context, listen: false).addToCart(drink);
          },
          child: Text(
            'Add to cart',
            style: TextStyle(color: Colors.brown.shade400),
          ),
        ),
      ),
    );
  }
}
