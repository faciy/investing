// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:investing/components/buton.dart';
import 'package:investing/components/header.dart';
import 'package:investing/screens/verification.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
                  Header(bgimage: 'assets/card.png', logo: 'assets/logo.png')
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'Login to ',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                  Text('App name',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff172774),
                      )),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Column(
                children: [
                  Container(
                    // color: Colors.grey,
                    margin: EdgeInsets.all(20),
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      cursorColor: Colors.greenAccent,
                      decoration: InputDecoration(
                          fillColor: Color(0xffEEEEEE),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          filled: true,
                          prefixText: '+225 ',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0))),
                    ),
                  ),
                  Button(
                      title: 'Request OTP',
                      btnClick: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Verification()),
                        );
                      })
                ],
              ),
              SizedBox(
                height: 90,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'Not registerred yet ',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  Text('Create an Account',
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
