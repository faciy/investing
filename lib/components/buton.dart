import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.title, required this.btnClick})
      : super(key: key);

  final title;
  final btnClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xff172774)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ))),
        child: SizedBox(
            height: 65,
            child: Center(
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            )),
        onPressed: btnClick,
      ),
    );
  }
}
