import '../utilities/categ_list.dart';
import 'package:flutter/material.dart';
import '../widget/categ_widgets.dart';

class ShoesCategory extends StatelessWidget {
  const ShoesCategory({super.key});

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
                  const CategHeaderLabel(headerlabel: 'Shoes'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.70,
                    child: GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 30,
                      crossAxisSpacing: 15,
                      children: List.generate(shoes.length, (index) {
                        return SubcategModel(
                          mainCategName: 'shoes',
                          subCategName: shoes[index],
                          assetName: 'images/shoes/shoes$index.jpg',
                          subcategLabel: shoes[index],
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
              child: Sliderbar(mainCategName: 'shoes',))
        ],
      ),
    );
  }
}
