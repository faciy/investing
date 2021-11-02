import 'package:flutter/material.dart';
import 'package:investing/components/buton.dart';
import 'package:investing/components/header.dart';
import 'package:investing/screens/app_home.dart';

class BankChoice extends StatelessWidget {
  const BankChoice({Key? key}) : super(key: key);

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
                  'Choose a banck account ',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              ),

              Container(
                margin: EdgeInsets.all(20),
                // ignore: prefer_const_constructors
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      width: 500,
                      height: 120,
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
                              trailing: Radio(
                                value: 'jeu',
                                groupValue: true,
                                onChanged: null,
                              ),
                              leading: Image.asset('assets/citi.png'),
                              title: Text('City bank, India'),
                              subtitle: Text('**** **45'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 500,
                      height: 120,
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
                              trailing: Radio(
                                value: 'jeu',
                                groupValue: true,
                                onChanged: null,
                              ),
                              leading: Image.asset('assets/baroda.png'),
                              title: Text('Bank of baroda, india'),
                              subtitle: Text('**** **78'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 500,
                      height: 120,
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
                              trailing: Radio(
                                value: 'jeu',
                                groupValue: true,
                                onChanged: null,
                              ),
                              leading: Image.asset('assets/sbi.png'),
                              title: Text('SBI Bank, india'),
                              subtitle: Text('**** **45'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Button(
                  title: 'Continue',
                  btnClick: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AppHome()),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
