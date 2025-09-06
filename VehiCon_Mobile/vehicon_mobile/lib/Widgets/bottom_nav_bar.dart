import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../Screens/home_screen.dart';
import '../Screens/supplier_screen.dart';
import '../Screens/task_screen.dart';
import '../Screens/user_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentPageIndex = 0;
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: buildPage(currentPageIndex),
      ),
      bottomNavigationBar: GNav(
        backgroundColor: Colors.white,
        gap: 10,
        activeColor: const Color.fromARGB(255, 203, 72, 7),
        padding: const EdgeInsets.all(16),
        tabs: const [
          GButton(
            icon: Iconsax.home_24,
            text: 'Home',
          ),
          GButton(
            icon: Iconsax.shop,
            text: 'Supplier',
          ),
          GButton(
            icon: Iconsax.note_21,
            text: 'Tasks',
          ),
          GButton(
            icon: Iconsax.user,
            text: 'Profile',
          ),
        ],
        selectedIndex: currentPageIndex,
        tabBackgroundColor: Colors.grey.shade100,
        onTabChange: (index) {
          setState(() {
            print(index);
            currentPageIndex = index;
          });
        },
      ),
    );
  }

  Widget buildPage(int index) {
    switch (index) {
      case 0:
        return const HomeScreen();
      case 1:
        return const SupplierScreen();
      case 2:
        return const TaskScreen();
      case 3:
        return const UserScreen();
      default:
        return const SizedBox();
    }
  }
}
