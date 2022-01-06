import 'package:ShoppingApp/pages/ProductsPage.dart';
import 'package:ShoppingApp/utils/empty_space_component.dart';
import 'package:ShoppingApp/utils/rounded_button_component.dart';
import 'package:ShoppingApp/utils/text_field_with_icon_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Registeration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Signin Demo',
        theme: ThemeData(
          primaryColor: Colors.cyan,
          accentColor: Colors.tealAccent,
        ),
        home: RegisterationPage());
  }
}

class RegisterationPage extends StatefulWidget {
  @override
  _RegisterationPageState createState() => _RegisterationPageState();
}

class _RegisterationPageState extends State<RegisterationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
              child: Container(
                height: MediaQuery.of(context).size.height * 1,
                width: MediaQuery.of(context).size.width * 1,
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    EmptySpace(widthOfEmptySpace: 0, heightOfEmptySpace: 0.01),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 0.0,
                          bottom: 0.0,
                          left: MediaQuery.of(context).size.width * 0.02,
                          right: 0.0),
                      child: Text(
                        "Registeration",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        //  height: MediaQuery.of(context).size.height * 0.5,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                  MediaQuery.of(context).size.width * 0.02),
                              topRight: Radius.circular(
                                  MediaQuery.of(context).size.width * 0.14)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: MediaQuery.of(context).size.height * 0.85,
                              width: MediaQuery.of(context).size.width * 1,
                              padding: EdgeInsets.only(top: 60.0),
                              child: Column(
                                children: <Widget>[
                                  TextBoxIcon(
                                      widthOfBox: 0.85,
                                      heightOfBox: 0.07,
                                      text: "Name",
                                      obscureText: false,
                                      iconType: Icons.account_circle),
                                  EmptySpace(
                                      widthOfEmptySpace: 0,
                                      heightOfEmptySpace: 0.01),
                                  TextBoxIcon(
                                      widthOfBox: 0.85,
                                      heightOfBox: 0.07,
                                      text: "Surname",
                                      obscureText: false,
                                      iconType: Icons.account_circle_outlined),
                                  EmptySpace(
                                      widthOfEmptySpace: 0,
                                      heightOfEmptySpace: 0.01),
                                  TextBoxIcon(
                                      widthOfBox: 0.85,
                                      heightOfBox: 0.07,
                                      text: "Email",
                                      obscureText: false,
                                      iconType: Icons.mail_outline),
                                  EmptySpace(
                                      widthOfEmptySpace: 0,
                                      heightOfEmptySpace: 0.01),
                                  TextBoxIcon(
                                      widthOfBox: 0.85,
                                      heightOfBox: 0.07,
                                      text: "Password",
                                      obscureText: true,
                                      iconType: Icons.lock),
                                  EmptySpace(
                                      widthOfEmptySpace: 0,
                                      heightOfEmptySpace: 0.01),
                                  TextBoxIcon(
                                      widthOfBox: 0.85,
                                      heightOfBox: 0.07,
                                      text: "Address",
                                      obscureText: false,
                                      iconType: Icons.add_location_alt_sharp),
                                  EmptySpace(
                                      widthOfEmptySpace: 0,
                                      heightOfEmptySpace: 0.01),
                                  RoundedElevatedButton(
                                      widthOfButton: 0.075,
                                      heightOfButton: 0.025,
                                      text: "Register",
                                      direct: ProductsPage(),
                                      color: const Color(0xff18a898),
                                      textColor: Colors.white),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
