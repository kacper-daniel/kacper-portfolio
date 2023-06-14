import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  final String image;
  final double height;

  const RoundedImage({super.key, required this.image, required this.height});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(300.0),
      child: Image.asset(image, height: height),
    );
  }
}