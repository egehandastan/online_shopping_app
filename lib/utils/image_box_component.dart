import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  const ImageBox(
      {required this.image, required this.width, required this.height});
  final double width;
  final double height;
  final image;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(image,
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width * width,
          height: MediaQuery.of(context).size.height * height),
    );
  }
}
