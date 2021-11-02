import 'package:flutter/material.dart';
import 'package:investing/components/buton.dart';
import 'package:investing/components/header.dart';
import 'package:investing/screens/bank_choice.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

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
                    'Sign up to ',
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
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        keyboardType: TextInputType.name,
                        cursorColor: Colors.greenAccent,
                        decoration: InputDecoration(
                            fillColor: Color(0xffEEEEEE),
                            focusedBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            filled: true,
                            hintText: "Name",
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10.0))),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: Colors.greenAccent,
                        decoration: InputDecoration(
                            fillColor: Color(0xffEEEEEE),
                            focusedBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            filled: true,
                            hintText: "Email",
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10.0))),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        cursorColor: Colors.greenAccent,
                        decoration: InputDecoration(
                            fillColor: Color(0xffEEEEEE),
                            focusedBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            filled: true,
                            hintText: "Phone Number",
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10.0))),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        cursorColor: Colors.greenAccent,
                        decoration: InputDecoration(
                            fillColor: Color(0xffEEEEEE),
                            focusedBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            filled: true,
                            hintText: "Country",
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10.0))),
                      ),
                    ),
                    Button(
                        title: 'Sign Up',
                        btnClick: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BankChoice()),
                          );
                        })
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  Text('Login',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff172774),
                      )),
                ],
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
