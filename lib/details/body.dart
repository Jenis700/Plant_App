import 'package:flutter/material.dart';
import 'package:plant_app/Screens/Detail_title_and_price.dart';
import 'package:plant_app/Screens/ImageAndIconCard.dart';
import 'package:plant_app/colorsFile.dart';

class BodyScreen extends StatelessWidget {
  const BodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIconCard(),
          Details_Title_And_Price(
            title: "Samantha",
            country: "Russia",
            price: 440,
          ),

          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              Expanded(
                  child: TextButton(
                onPressed: () {},
                child: Text(
                  "Description",
                  style: TextStyle(color: kPrimaryColor, fontSize: 16),
                ),
              ))
            ],
          ),
          // SizedBox(height: kDefaultPadding * 2),
        ],
      ),
    );
  }
}
