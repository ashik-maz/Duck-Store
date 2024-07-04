import 'package:duck_store/widget/appbar_widgets.dart';
import 'package:flutter/material.dart';

class StaticsScreen extends StatelessWidget {
  const StaticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTittle(title: "StaticsScreen"),
        leading: const AppBarBackbutton(),
      ),
    );
  }
}
