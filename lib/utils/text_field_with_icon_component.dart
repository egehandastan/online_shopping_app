import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextBoxIcon extends StatelessWidget {
  final double widthOfBox;
  final double heightOfBox;
  final String text;
  final iconType;

  final obscureText;
  const TextBoxIcon(
      {required this.widthOfBox,
      required this.heightOfBox,
      required this.text,
      required this.iconType,
      this.obscureText});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * widthOfBox,
      height: MediaQuery.of(context).size.height * heightOfBox,
      padding: EdgeInsets.only(
          top: 0.0,
          bottom: 0.0,
          left: MediaQuery.of(context).size.width * 0.016,
          right: MediaQuery.of(context).size.width * 0.016),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(MediaQuery.of(context).size.width * 0.14),
            topLeft: Radius.circular(MediaQuery.of(context).size.width * 0.02),
            bottomRight:
                Radius.circular(MediaQuery.of(context).size.width * 0.005),
            bottomLeft:
                Radius.circular(MediaQuery.of(context).size.width * 0.005),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 5.0),
          ]),
      child: TextField(
        obscureText: obscureText,
        cursorColor: Colors.black,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: text,
          icon: Icon(
            iconType,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
