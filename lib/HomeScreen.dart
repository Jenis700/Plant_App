import 'package:flutter/material.dart';
import 'package:plant_app/Screens/Recomended_plants.dart';
import 'package:plant_app/Screens/Title_And_MoreButton.dart';
import 'package:plant_app/colorsFile.dart';

import 'Screens/Header_with_searchbox.dart';
import 'Screens/feature_plants.dart';
import 'Screens/navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: UiBody(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        icon: ImageIcon(AssetImage("assets/menu icon image.png")),
        onPressed: () {},
      ),
    );
  }
}


class UiBody extends StatelessWidget {
  const UiBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearch(size: size),
          TitleAndMoreButton(text: "Recomended", press: () {}),
          RecomendedPlants(),
          TitleAndMoreButton(text: "Featured Plants", press: () {}),
          FeaturePlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
