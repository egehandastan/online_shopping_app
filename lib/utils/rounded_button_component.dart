import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RoundedElevatedButton extends StatelessWidget {
  final double widthOfButton;
  final double heightOfButton;
  final String text;
  final Color color;
  final Color textColor;
  final direct;
  const RoundedElevatedButton(
      {required this.widthOfButton,
      required this.heightOfButton,
      required this.text,
      required this.direct,
      required this.color,
      required this.textColor});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * widthOfButton,
              vertical: MediaQuery.of(context).size.height * heightOfButton),
          primary: color,
          onPrimary: color,
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.all(Radius.elliptical(9999.0, 9999.0))),
          side: BorderSide(color: Colors.transparent)),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Segoe UI',
          fontSize: MediaQuery.of(context).size.width * 0.035,
          color: textColor,
        ),
        textAlign: TextAlign.center,
      ),
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => direct));
      },
    );
  }
}
