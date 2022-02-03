import 'package:flutter/material.dart';
import 'package:plant_app/Screens/recomeded_title.dart';

import '../colorsFile.dart';
class TitleAndMoreButton extends StatelessWidget {
  const TitleAndMoreButton({Key? key, required  this.text, required this.press}) : super(key: key);

  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RecomendedTitle(text: text),
          Spacer(),
          TextButton(
            onPressed: press,
            child: Text(
              "Read",
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kPrimaryColor),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
