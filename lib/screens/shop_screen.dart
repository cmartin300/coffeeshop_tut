import 'package:coffeeshop_tut/components/drink_tile.dart';
import 'package:coffeeshop_tut/models/shop_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "What can we get you today?",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            Consumer<Shop>(
              builder: (context, value, child) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: value.shop.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: DrinkTile(
                          drink: value.shop[index],
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
