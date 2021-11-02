// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key, required this.bgimage, required this.logo})
      : super(key: key);

  // ignore: prefer_typing_uninitialized_variables
  final bgimage;
  // ignore: prefer_typing_uninitialized_variables
  final logo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(bgimage), fit: BoxFit.cover),
        ),
        child: Center(child: Image.asset(logo)),
      ),
    );
  }
}
