import 'package:duck_store/widget/appbar_widgets.dart';
import 'package:flutter/material.dart';

class CustomerOrders extends StatelessWidget {
  const CustomerOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTittle(title: "CustomerOrders"),
        leading: const AppBarBackbutton(),
      ),
    );
  }
}
