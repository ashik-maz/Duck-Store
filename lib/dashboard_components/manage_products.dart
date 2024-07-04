import 'package:duck_store/widget/appbar_widgets.dart';
import 'package:flutter/material.dart';

class ManageProducts extends StatelessWidget {
  const ManageProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTittle(title: "ManageProducts"),
        leading: const AppBarBackbutton(),
      ),
    );
  }
}
