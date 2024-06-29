import 'package:duck_store/utilities/categ_list.dart';
import 'package:flutter/material.dart';
import '../widget/categ_widgets.dart';

class BagsCategory extends StatelessWidget {
  const BagsCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.83,
              width: MediaQuery.of(context).size.width * 0.75,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CategHeaderLabel(headerlabel: 'Bags'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.70,
                    child: GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 30,
                      crossAxisSpacing: 15,
                      children: List.generate(bags.length, (index) {
                        return SubcategModel(
                          mainCategName: 'bags',
                          subCategName: bags[index],
                          assetName: 'images/bags/bags$index.jpg',
                          subcategLabel: bags[index],
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Positioned(
              bottom: 0,
              right: 0,
              child: Sliderbar(mainCategName: 'bags',))
        ],
      ),
    );
  }
}

