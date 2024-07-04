import 'package:duck_store/widget/appbar_widgets.dart';
import 'package:flutter/material.dart';

class SeupplierOrders extends StatelessWidget {
  const SeupplierOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTittle(title: "SuppLierOrders"),
        leading: const AppBarBackbutton(),
      ),
    );
  }
}
