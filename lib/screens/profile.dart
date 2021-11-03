import 'dart:ui';

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 90,
                  height: 90,
                  child: Center(child: Image.asset('assets/photo.png')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Angila rodes',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
              Text(
                '+225 68060990',
                style:
                    TextStyle(fontWeight: FontWeight.w700, color: Colors.grey),
              ),
              Container(
                width: 500,
                height: 80,
                child: Card(
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        leading: Image.asset('assets/icon.png'),
                        title: Text(
                          'My account',
                          style: TextStyle(color: Color(0xff172774)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 500,
                height: 80,
                child: Card(
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        leading: Image.asset('assets/icon.png'),
                        title: Text('My Investment',
                            style: TextStyle(color: Color(0xff172774))),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 500,
                height: 80,
                child: Card(
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        leading: Image.asset('assets/icon.png'),
                        title: Text('Banks',
                            style: TextStyle(color: Color(0xff172774))),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 500,
                height: 80,
                child: Card(
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        leading: Image.asset('assets/icon.png'),
                        title: Text('Supports',
                            style: TextStyle(color: Color(0xff172774))),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 500,
                height: 80,
                child: Card(
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        leading: Image.asset('assets/icon.png'),
                        title: Text('Terms of service',
                            style: TextStyle(color: Color(0xff172774))),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 500,
                height: 80,
                child: Card(
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        leading: Image.asset('assets/icon.png'),
                        title: Text('Privary policy',
                            style: TextStyle(color: Color(0xff172774))),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
