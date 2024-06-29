import 'package:duck_store/main_screens/cart.dart';
import 'package:duck_store/main_screens/home.dart';
import 'package:duck_store/main_screens/profile.dart';
import 'package:duck_store/main_screens/stores.dart';
import 'package:flutter/material.dart';

import 'category.dart';

class CustomerHomeScreen extends StatefulWidget {
  const CustomerHomeScreen({super.key});

  @override
  State<CustomerHomeScreen> createState() => _CustomerHomeScreenState();
}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {
  int _setselectedIndex=0;
  final List<Widget> _tabs= const[
    HomeScreen(),
    CategoryScreen(),
    StoreScreen(),
    CartScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_setselectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        currentIndex: _setselectedIndex,
        items: const[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Category",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shop),
          label: "Stores",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: "Cart",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile",
        ),
      ],
      onTap: (index){
        setState(() {
          {
            _setselectedIndex=index;
          }
        });
      },
      ),
    );
  }
}
