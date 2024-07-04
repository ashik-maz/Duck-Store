import 'package:duck_store/widget/appbar_widgets.dart';
import 'package:flutter/material.dart';

class BalanceScreeen extends StatelessWidget {
  const BalanceScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTittle(title: "BalanceScreeen"),
        leading: const AppBarBackbutton(),
      ),
    );
  }
}
