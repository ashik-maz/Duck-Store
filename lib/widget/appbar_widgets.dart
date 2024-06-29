import 'package:flutter/material.dart';

class AppBarTittle extends StatelessWidget {
  const AppBarTittle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:const TextStyle(color: Colors.black,fontFamily: 'Acme', letterSpacing: 1.5),
    );
  }
}

class AppBarBackbutton extends StatelessWidget {
  const AppBarBackbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.arrow_back_ios_new,
        color: Colors.black,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
