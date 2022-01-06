import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Backgrounds extends StatelessWidget {
  final photo;
  const Backgrounds({@required this.photo});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(photo,
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1),
      alignment: Alignment.center,
    );
  }
}
