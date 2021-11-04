import 'package:flutter/material.dart';
import 'package:investing/components/buton.dart';
import 'package:investing/components/header.dart';
import 'package:investing/screens/register.dart';

class Verification extends StatelessWidget {
  const Verification({Key? key, required this.title}) : super(key: key);
  final title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Stack(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Header(bgimage: 'assets/card.png', logo: 'assets/logo.png')
                ],
              ),
              SizedBox(
                height: 15,
              ),
              // ignore: prefer_const_literals_to_create_immutables
              // ignore: prefer_const_constructors
              Center(
                child: Text(
                  'Verification code $title',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              ),

              Container(
                margin: EdgeInsets.all(20),
                // ignore: prefer_const_constructors
                child: Text(
                  'We have been send the code verification to your Mobile number +225 0768060990',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 70,
                    margin: EdgeInsets.all(10),
                    child: Center(
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.phone,
                        cursorColor: Colors.greenAccent,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                      ),
                    ),
                  ),
                  Container(
                    width: 70,
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.phone,
                      cursorColor: Colors.greenAccent,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                    ),
                  ),
                  Container(
                    width: 70,
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.phone,
                      cursorColor: Colors.greenAccent,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                    ),
                  ),
                  Container(
                    width: 70,
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.phone,
                      cursorColor: Colors.greenAccent,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                    ),
                  ),
                ],
              ),
              Button(
                  title: 'Submit',
                  btnClick: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Register()),
                    );
                  }),

              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'Don\'t recive Code ? ',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  Text('Re-send',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff172774),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
