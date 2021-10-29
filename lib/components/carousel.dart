// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({Key? key, required this.infoname, required this.image})
      : super(key: key);

  final image;
  final infoname;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset(
            image,
            width: MediaQuery.of(context).size.width,
            height: 500.0,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              infoname,
              style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Center(
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
