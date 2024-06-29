import 'package:flutter/material.dart';

import '../widget/appbar_widgets.dart';

class SubcategProducts extends StatelessWidget {
  final String mainCategName;
  final String subCategName;
  const SubcategProducts(
      {super.key, required this.mainCategName, required this.subCategName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leading: const AppBarBackbutton(),
        title: AppBarTittle(title: subCategName),
      ),
      body: Center(child: Text(mainCategName)),
    );
  }
}

