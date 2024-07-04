import 'package:duck_store/widget/appbar_widgets.dart';
import 'package:flutter/material.dart';

class MyStore extends StatelessWidget {
  const MyStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTittle(title: "My Store"
        ),
        leading: const AppBarBackbutton(),
      ),
    );
  }
}
