import 'package:ShoppingApp/pages/LoginPage.dart';
import 'package:ShoppingApp/utils/backgrounds.dart';
import 'package:ShoppingApp/utils/empty_space_component.dart';
import 'package:ShoppingApp/utils/image_box_component.dart';
import 'package:ShoppingApp/utils/images.dart';
import 'package:ShoppingApp/utils/rounded_button_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'RegisterationPage.dart';
import 'UnregisteredPage.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Backgrounds(photo: background),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ImageBox(image: title, width: 0.4, height: 0.4),
                EmptySpace(widthOfEmptySpace: 0, heightOfEmptySpace: 0.01),
                RoundedElevatedButton(
                    widthOfButton: 0.01,
                    heightOfButton: 0.01,
                    text: "Register",
                    direct: RegisterationPage(),
                    color: const Color(0xff18a898),
                    textColor: Colors.white),
                EmptySpace(widthOfEmptySpace: 0, heightOfEmptySpace: 0.01),
                RoundedElevatedButton(
                    widthOfButton: 0.01,
                    heightOfButton: 0.01,
                    text: "Login",
                    direct: LoginPage(),
                    color: const Color(0xff18a898),
                    textColor: Colors.white),
                EmptySpace(widthOfEmptySpace: 0, heightOfEmptySpace: 0.01),
                RoundedElevatedButton(
                    widthOfButton: 0.01,
                    heightOfButton: 0.01,
                    text: "Continue Without Registeration",
                    direct: UnregisteredPage(),
                    color: const Color(0xff18a898),
                    textColor: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
