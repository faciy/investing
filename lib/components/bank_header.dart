import 'package:flutter/material.dart';

class BankHeader extends StatelessWidget {
  const BankHeader({Key? key}) : super(key: key);

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
          automaticallyImplyLeading: false,
          flexibleSpace: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                        height: 120,
                      ),
                      Text("Banks Accounts",
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                      SizedBox(width: 200),
                      Icon(Icons.notifications, color: Colors.white),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
