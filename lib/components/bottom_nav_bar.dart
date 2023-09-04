import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyCustomBottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;

  const MyCustomBottomNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        color: Colors.grey.shade400,
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.grey.shade700,
        tabBackgroundColor: Colors.grey.shade400,
        tabBorderRadius: 20,
        tabActiveBorder: Border.all(
          color: Colors.white,
          width: 3,
        ),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: ' Shop',
          ),
          GButton(
            icon: Icons.shopping_bag_outlined,
            text: ' Cart',
          ),
        ],
      ),
    );
  }
}
