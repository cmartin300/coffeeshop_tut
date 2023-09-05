import 'package:coffeeshop_tut/models/shop_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Cart",
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
                    itemCount: value.cart.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.brown.shade100,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListTile(
                          leading: Image.asset(
                            value.cart[index].imagePath,
                            height: 36,
                          ),
                          title: Text(value.cart[index].drinkName),
                          subtitle: Text(value.cart[index].drinkPrice),
                          trailing: IconButton(
                            icon: const Icon(Icons.cancel),
                            onPressed: () {
                              Provider.of<Shop>(context, listen: false)
                                  .removeFromCart(value.cart[index]);
                            },
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
            Consumer<Shop>(
              builder: (context, value, child) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green.shade300,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Subtotal',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "\$${value.calculateTotal()}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Text(
                              'Pay Now',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
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
