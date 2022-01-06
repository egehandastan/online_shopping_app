import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmptySpace extends StatelessWidget {
  final double widthOfEmptySpace;
  final double heightOfEmptySpace;
  const EmptySpace(
      {required this.widthOfEmptySpace, required this.heightOfEmptySpace});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * widthOfEmptySpace,
          height: MediaQuery.of(context).size.height * heightOfEmptySpace,
        ),
      ],
    );
  }
}
