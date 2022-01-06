import 'package:ShoppingApp/utils/backgrounds.dart';
import 'package:ShoppingApp/utils/empty_space_component.dart';
import 'package:ShoppingApp/utils/images.dart';
import 'package:ShoppingApp/utils/rounded_button_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return Scaffold(
      backgroundColor: const Color(0xff9cfffa),
      body: Stack(
        children: <Widget>[
          Backgrounds(photo: background),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RoundedElevatedButton(
                    widthOfButton: 0.1,
                    heightOfButton: 0.05,
                    text: "My Orders",
                    direct: AccountPage(),
                    color: const Color(0xff299a94),
                    textColor: Colors.white),
                EmptySpace(widthOfEmptySpace: 0, heightOfEmptySpace: 0.1),
                RoundedElevatedButton(
                    widthOfButton: 0.1,
                    heightOfButton: 0.05,
                    text: "My Comments",
                    direct: AccountPage(),
                    color: const Color(0xff299a94),
                    textColor: Colors.white),
                EmptySpace(widthOfEmptySpace: 0, heightOfEmptySpace: 0.1),
                RoundedElevatedButton(
                    widthOfButton: 0.1,
                    heightOfButton: 0.05,
                    text: "My Account Information",
                    direct: AccountPage(),
                    color: const Color(0xff299a94),
                    textColor: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
