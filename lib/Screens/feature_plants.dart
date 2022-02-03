import 'package:flutter/material.dart';
import 'package:plant_app/colorsFile.dart';

import 'feature_plant_card.dart';

class FeaturePlants extends StatelessWidget {
  const FeaturePlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(right: kDefaultPadding),
        child: Row(
          children: [
            FeaturePlantCard(images: "assets/plant 20.jpg", press: () {}),
            FeaturePlantCard(images: "assets/plant 19.jpg", press: () {}),
            FeaturePlantCard(images: "assets/plant 16.jpg", press: () {}),
            FeaturePlantCard(images: "assets/plant 17.jpg", press: () {}),
            FeaturePlantCard(images: "assets/plant 18.jpg", press: () {}),
            FeaturePlantCard(images: "assets/plant 14.jpg", press: () {}),
            FeaturePlantCard(images: "assets/plant 13.png", press: () {}),
          ],
        ),
      ),
    );
  }
}
