import 'package:flutter/material.dart';

class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
      // ignore: prefer_const_constructors
      preferredSize: Size.fromHeight(200.0),
      child: AppBar(
        //   leading: Builder(
        //     builder: (BuildContext context) {
        //       return IconButton(
        //         iconSize: 40,
        //         icon: const Icon(Icons.notes),
        //         onPressed: () {
        //           Scaffold.of(context).openDrawer();
        //         },
        //       );
        //     },
        //   ),
        //   title: Text('App name'),
        //   actions: [
        //     IconButton(
        //       icon: const Icon(Icons.notifications),
        //       iconSize: 40,
        //       onPressed: () {
        //         // handle the press
        //       },
        //     ),
        //   ],
        // backgroundColor: Color(0xff172774),
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.vertical(
        //     bottom: Radius.circular(30),
        //   ),
        // ),
        // )
        automaticallyImplyLeading: false,
        flexibleSpace: SingleChildScrollView(
          child: Container(
            // color: Color(0xff172774),
            child: Column(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      // width: 15,
                      height: 100,
                    ),
                    Icon(Icons.notes, color: Colors.white),
                    SizedBox(width: 10),
                    Text("App name",
                        style: TextStyle(fontSize: 23, color: Colors.white)),
                    SizedBox(width: 200),
                    Icon(Icons.notifications, color: Colors.white),
                  ],
                ),
                SizedBox(height: 100),
                Container(
                  // height: 40,

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
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
