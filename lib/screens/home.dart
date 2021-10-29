import 'package:flutter/material.dart';
// ignore: unused_import
import 'slide.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  final color = const Color(0xff172774);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 100,
                height: 100,
                child: const Center(
                  child: Text(
                    'LOGO',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.pink)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Slide()),
                );
              },
              child: const Text(" NEXT"),
            )
          ],
        ));
  }
}
