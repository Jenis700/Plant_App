import 'package:flutter/material.dart';
import 'package:plant_app/colorsFile.dart';

import 'detail_Icon_card.dart';

class ImageAndIconCard extends StatelessWidget {
  const ImageAndIconCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Image.asset("assets/back arrow icon.png"),
                      ),
                    ),
                    Spacer(),
                    DetailIconCard(image: "assets/sun-icon.png"),
                    DetailIconCard(image: "assets/temp-Cold-Image-Icon.png"),
                    DetailIconCard(image: "assets/wind-weather-Icon-Image.png"),
                    DetailIconCard(image: "assets/card-image-Icon.png"),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(63),
                  topLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(
                      0.2,
                    ),
                  ),
                ],
                image: DecorationImage(
                  alignment: Alignment.topCenter,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/plant 21.jpg"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
