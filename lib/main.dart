import 'package:duck_store/main_screens/customer_home.dart';
import 'package:duck_store/main_screens/supplier_home.dart';

import 'main_screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: WelcomeScreen(),
      initialRoute:'/welcome_screen' ,
      routes: {
        '/welcome_screen':(context)=>const WelcomeScreen(),
        '/suplier_home':(context)=>const SupplierHomeScreen(),
        '/customer_home':(context)=>const CustomerHomeScreen(),

      },
    );
  }
}