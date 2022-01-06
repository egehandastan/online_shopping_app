import 'package:ShoppingApp/utils/empty_space_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ProductsPage.dart';

class AfterPaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Thank you for your order!",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                EmptySpace(widthOfEmptySpace: 0.1, heightOfEmptySpace: 0.1),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.05,
                          vertical: MediaQuery.of(context).size.height * 0.005),
                      primary: Colors.teal,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0))),
                      side: BorderSide(color: Colors.transparent)),
                  child: Text(
                    "Return Shopping",
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: MediaQuery.of(context).size.width * 0.035,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductsPage(),
                    ));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
