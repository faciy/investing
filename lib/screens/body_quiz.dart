import 'package:flutter/material.dart';
import 'package:investing/screens/plan.dart';

class BodyQuiz extends StatelessWidget {
  const BodyQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Investing Plans',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      )),
                  Text(
                    'View all',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  )
                ],
              ),
              // card
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white)),
                              child: Center(
                                  child: Image.asset('assets/mutual.png')),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Plan()),
                                );
                              },
                            ),
                          ),
                          Text(
                            'Mutual found',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            child: Card(
                              child: Center(
                                  child: Image.asset('assets/monthly.png')),
                            ),
                          ),
                          Text('Monthly in.',
                              style: TextStyle(fontWeight: FontWeight.w500)),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            child: Card(
                              child:
                                  Center(child: Image.asset('assets/unit.png')),
                            ),
                          ),
                          Text('Unit link in.',
                              style: TextStyle(fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            child: Card(
                              child: Center(
                                  child: Image.asset('assets/senior.png')),
                            ),
                          ),
                          Text('Senior citizen',
                              style: TextStyle(fontWeight: FontWeight.w500)),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            child: Card(
                              child:
                                  Center(child: Image.asset('assets/ppf.png')),
                            ),
                          ),
                          Text('PPF found',
                              style: TextStyle(fontWeight: FontWeight.w500)),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            child: Card(
                              child:
                                  Center(child: Image.asset('assets/gold.png')),
                            ),
                          ),
                          Text('Gold in.',
                              style: TextStyle(fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    width: 500,
                    height: 260,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'What is your monthly incomes ?',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 100,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    color: Color(0xffEFEFEF),
                                    child: Center(
                                        child: Text(
                                      '10,000',
                                      style: TextStyle(color: Colors.grey),
                                    )),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    color: Color(0xffEFEFEF),
                                    child: Center(
                                        child: Text(
                                      '15,000',
                                      style: TextStyle(color: Colors.grey),
                                    )),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    color: Color(0xffEFEFEF),
                                    child: Center(
                                        child: Text(
                                      '20,000',
                                      style: TextStyle(color: Colors.grey),
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    color: Color(0xff172774),
                                    child: Center(
                                        child: Text(
                                      '25,000',
                                      style: TextStyle(color: Colors.grey),
                                    )),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    color: Color(0xffEFEFEF),
                                    child: Center(
                                        child: Text(
                                      '30,000',
                                      style: TextStyle(color: Colors.grey),
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    color: Color(0xffEFEFEF),
                                    child: Center(
                                        child: Text(
                                      '35,000',
                                      style: TextStyle(color: Colors.grey),
                                    )),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    color: Color(0xffEFEFEF),
                                    child: Center(
                                        child: Text(
                                      '40,000',
                                      style: TextStyle(color: Colors.grey),
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              /// Deuxième colonne
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    width: 500,
                    height: 260,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'How much you want invest monthly ?',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 100,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    color: Color(0xffEFEFEF),
                                    child: Center(
                                        child: Text(
                                      '500',
                                      style: TextStyle(color: Colors.grey),
                                    )),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    color: Color(0xffEFEFEF),
                                    child: Center(
                                        child: Text(
                                      '1000',
                                      style: TextStyle(color: Colors.grey),
                                    )),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    color: Color(0xffEFEFEF),
                                    child: Center(
                                        child: Text(
                                      '1500',
                                      style: TextStyle(color: Colors.grey),
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    color: Color(0xff172774),
                                    child: Center(
                                        child: Text(
                                      '2000',
                                      style: TextStyle(color: Colors.grey),
                                    )),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    color: Color(0xffEFEFEF),
                                    child: Center(
                                        child: Text(
                                      '2500',
                                      style: TextStyle(color: Colors.grey),
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    color: Color(0xffEFEFEF),
                                    child: Center(
                                        child: Text(
                                      '3000',
                                      style: TextStyle(color: Colors.grey),
                                    )),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    color: Color(0xffEFEFEF),
                                    child: Center(
                                        child: Text(
                                      '3500',
                                      style: TextStyle(color: Colors.grey),
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              // card
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Text(
                    'Best monthly plans for you.',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Container(
                    width: 500,
                    height: 120,
                    child: Card(
                      margin: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListTile(
                            leading: Image.asset('assets/ppf.png'),
                            title: Text('Public Provident Funds'),
                            subtitle: Text('Mothly : 2000 Duration : 2 year'),
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
                      elevation: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListTile(
                            leading: Image.asset('assets/ppf.png'),
                            title: Text('Public Provident Funds'),
                            subtitle: Text('Mothly : 2000 Duration : 2 year'),
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
                      elevation: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListTile(
                            leading: Image.asset('assets/ppf.png'),
                            title: Text('Public Provident Funds'),
                            subtitle: Text('Mothly : 2000 Duration : 2 year'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
