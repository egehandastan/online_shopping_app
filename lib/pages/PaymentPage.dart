import 'package:ShoppingApp/pages/AfterPaymentPage.dart';
import 'package:ShoppingApp/utils/empty_space_component.dart';
import 'package:ShoppingApp/utils/text_field_with_icon_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextBoxIcon(
                      widthOfBox: 0.8,
                      heightOfBox: 0.1,
                      text: "Card Number",
                      obscureText: false,
                      iconType: Icons.info_outline),
                  EmptySpace(widthOfEmptySpace: 0.1, heightOfEmptySpace: 0.01),
                  TextBoxIcon(
                      widthOfBox: 0.8,
                      heightOfBox: 0.1,
                      text: "Holder Name",
                      obscureText: false,
                      iconType: Icons.account_circle_outlined),
                  EmptySpace(widthOfEmptySpace: 0.1, heightOfEmptySpace: 0.01),
                  TextBoxIcon(
                      widthOfBox: 0.8,
                      heightOfBox: 0.1,
                      text: "MM/YYYY",
                      obscureText: false,
                      iconType: Icons.calendar_today_outlined),
                  EmptySpace(widthOfEmptySpace: 0.1, heightOfEmptySpace: 0.01),
                  TextBoxIcon(
                      widthOfBox: 0.8,
                      heightOfBox: 0.1,
                      text: "CVV",
                      obscureText: true,
                      iconType: Icons.security_outlined),
                  EmptySpace(widthOfEmptySpace: 0.1, heightOfEmptySpace: 0.01),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.05,
                            vertical:
                                MediaQuery.of(context).size.height * 0.005),
                        primary: Colors.teal,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0))),
                        side: BorderSide(color: Colors.transparent)),
                    child: Text(
                      "Pay",
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: MediaQuery.of(context).size.width * 0.035,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AfterPaymentPage(),
                      ));
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
