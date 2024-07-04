import 'package:duck_store/widget/appbar_widgets.dart';
import 'package:flutter/material.dart';

class EditBusiness extends StatelessWidget {
  const EditBusiness({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTittle(title: "EditBusiness"),
        leading: const AppBarBackbutton(),
      ),
    );
  }
}
