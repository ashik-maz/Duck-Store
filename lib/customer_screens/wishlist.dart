import 'package:duck_store/widget/appbar_widgets.dart';
import 'package:flutter/material.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTittle(title: "Wishlist"),
        leading: const AppBarBackbutton(),
      ),
    );
  }
}
