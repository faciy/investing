import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:investing/components/buton.dart';

class Plan extends StatelessWidget {
  const Plan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        // ignore: prefer_const_constructors
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          backgroundColor: Color(0xff172774),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          flexibleSpace: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 40,
                        height: 120,
                      ),
                      SizedBox(width: 10),
                      Text("Mutual found investmet",
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                      SizedBox(width: 100),
                      Icon(Icons.notifications, color: Colors.white),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              width: 500,
              height: 260,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/people.png'),
                          Text(
                            'Mutual found investment',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Image.asset('assets/inotif.png')
                        ],
                      ),
                      SizedBox(width: 50, height: 20),
                      Row(
                        children: [Text('Mothly : 2000  Duration : 2 year')],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '6000\$',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '48,000\$',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.grey))
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Button(
                            title: '         Satuts         ',
                            btnClick: () {})),
                    Button(title: '          Add          ', btnClick: () {})
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
