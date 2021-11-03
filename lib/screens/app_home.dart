import 'package:flutter/material.dart';
import 'package:investing/components/app_header.dart';
import 'package:investing/components/bank_header.dart';
import 'package:investing/components/card_choice.dart';
import 'package:investing/screens/body_quiz.dart';
import 'package:investing/screens/login.dart';
import 'package:investing/screens/profile.dart';
import 'package:investing/screens/register.dart';

class AppHome extends StatefulWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int _currentIndex = 0;
  final List _children = [
    BodyQuiz(),
    Center(child: Text('Slide Over')),
    CardChoice(),
    Profile()
  ];

  final List _childrens = [
    AppHeader(),
    BankHeader(),
    BankHeader(),
    BankHeader(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        // ignore: prefer_const_constructors
        preferredSize: Size.fromHeight(200.0),
        child: _childrens[_currentIndex],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xFF172774),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(.60),
            selectedFontSize: 14,
            onTap: onTabTapped, // new
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notes),
                title: Text('Investing'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.food_bank_rounded),
                title: Text('Bank'),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text('Profile'))
            ],
          ),
        ),
      ),
    );
  }
}
