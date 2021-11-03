import 'package:flutter/material.dart';
import 'package:investing/components/buton.dart';

class CardChoice extends StatelessWidget {
  const CardChoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
            Button(
                title: '+ Add New Banck',
                btnClick: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => AppHome()),
                  // );
                })
          ],
        ),
      ),
    );
  }
}
