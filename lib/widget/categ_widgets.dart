import 'package:duck_store/monor_screens/subcateg_products.dart';
import 'package:flutter/material.dart';

class Sliderbar extends StatelessWidget {
  final String mainCategName;
  const Sliderbar({
    super.key,
    required this.mainCategName,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.82,
      width: MediaQuery.of(context).size.width * 0.05,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.brown.withOpacity(0.2),
              borderRadius: BorderRadius.circular(50)),
          child: RotatedBox(
            quarterTurns: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                mainCategName == 'beauty'
                    ? const Text('')
                    : const Text(" << ", style: style),
                Text(mainCategName.toUpperCase(), style: style),
                mainCategName == 'men'
                    ? const Text('')
                    : const Text(" >> ", style: style),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const style =
    TextStyle(color: Colors.brown, fontSize: 16, fontWeight: FontWeight.w600);

class SubcategModel extends StatelessWidget {
  final String mainCategName;
  final String subCategName;
  final String assetName;
  final String subcategLabel;

  const SubcategModel({
    super.key,
    required this.mainCategName,
    required this.subCategName,
    required this.assetName,
    required this.subcategLabel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SubcategProducts(
                      mainCategName: mainCategName,
                      subCategName: subCategName,
                    )));
      },
      child: Column(
        children: [
          SizedBox(
            height: 70,
            width: 70,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(assetName),
            ),
          ),
          Text(subcategLabel,style:const TextStyle(fontSize: 11),)
        ],
      ),
    );
  }
}

class CategHeaderLabel extends StatelessWidget {
  final String headerlabel;
  const CategHeaderLabel({
    super.key,
    required this.headerlabel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        headerlabel,
        style: const TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 1.5),
      ),
    );
  }
}
