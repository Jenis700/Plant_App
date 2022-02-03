import 'package:flutter/material.dart';

import '../colorsFile.dart';

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key? key,
    required this.images,
    required this.press,
  }) : super(key: key);

  final String images;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        child: ClipRRect(
            child: Image.asset(
              images,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
