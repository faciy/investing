import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        // ignore: prefer_const_constructors
        preferredSize: Size.fromHeight(200.0),
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
                      Icon(Icons.notes, color: Colors.white),
                      SizedBox(width: 10),
                      Text("App name",
                          style: TextStyle(fontSize: 23, color: Colors.white)),
                      SizedBox(width: 200),
                      Icon(Icons.notifications, color: Colors.white),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.greenAccent,
                      decoration: InputDecoration(
                          fillColor: Color(0xffEEEEEE),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          hintText: 'Search hear...',
                          prefixIcon:
                              Icon(Icons.search, size: 30, color: Colors.grey),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                    ),
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
