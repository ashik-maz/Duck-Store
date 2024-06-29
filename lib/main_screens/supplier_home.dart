import 'package:duck_store/main_screens/dashboard.dart';
import 'package:duck_store/main_screens/home.dart';
import 'package:duck_store/main_screens/stores.dart';
import 'package:flutter/material.dart';

import 'category.dart';

class SupplierHomeScreen extends StatefulWidget {
  const SupplierHomeScreen({super.key});

  @override
  State<SupplierHomeScreen> createState() => _SupplierHomeScreenState();
}

class _SupplierHomeScreenState extends State<SupplierHomeScreen> {
  int _setselectedIndex=0;
  final List<Widget> _tabs= const[
    HomeScreen(),
    CategoryScreen(),
    StoreScreen(),
    DashboardScreen(),
    Center(child: Text('Upload'),)
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
          icon: Icon(Icons.dashboard),
          label: "Dashboard",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.upload),
          label: "Upload",
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
