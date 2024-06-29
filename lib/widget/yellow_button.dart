import 'package:flutter/material.dart';

class YellowButton extends StatelessWidget {
  final String label;
  final Function() onpressed;
  final double width;

  const YellowButton({
    super.key,
    required this.label,
    required this.onpressed,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width * width,
      decoration: BoxDecoration(
          color: Colors.yellow, borderRadius: BorderRadius.circular(25)),
      child: MaterialButton(
        onPressed: onpressed,
        child: Text(label),
      ),
    );
  }
}