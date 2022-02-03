import 'package:flutter/material.dart';
import 'package:plant_app/details/details.dart';

import 'Detail_title_and_price.dart';
import 'Plant_Card.dart';

class RecomendedPlants extends StatelessWidget {
  const RecomendedPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PlantCard(
            image: "assets/plant 2.jpg",
            title: "Samantha",
            countryName: "russia",
            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          PlantCard(
            image: "assets/plant 3.png",
            title: "Samantha",
            countryName: "russia",
            price: 440,
            press: () {},
          ),
          PlantCard(
            image: "assets/plant 5.jpg",
            title: "Samantha",
            countryName: "russia",
            price: 440,
            press: () {},
          ),
          PlantCard(
            image: "assets/plant 7.jpg",
            title: "Samantha",
            countryName: "russia",
            price: 440,
            press: () {},
          ),
          PlantCard(
            image: "assets/plant 8.webp",
            title: "Samantha",
            countryName: "russia",
            price: 440,
            press: () {},
          ),
          PlantCard(
            image: "assets/plant 9.jpg",
            title: "Samantha",
            countryName: "russia",
            price: 440,
            press: () {},
          ),
          PlantCard(
            image: "assets/plant 10.jpg",
            title: "Samantha",
            countryName: "russia",
            price: 440,
            press: () {},
          ),
          PlantCard(
            image: "assets/plant 11.jpg",
            title: "Samantha",
            countryName: "russia",
            price: 440,
            press: () {},
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
