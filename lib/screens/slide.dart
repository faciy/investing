import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:investing/components/carousel.dart';
import 'login.dart';

class Slide extends StatefulWidget {
  const Slide({Key? key}) : super(key: key);

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  // ignore: prefer_final_fields
  int _currentIndex = 0;

  List cardList = [
    const Item1(),
    const Item2(),
    const Item3(),
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     backgroundColor: Colors.transparent, title: const Text('Slide')),
      body: SizedBox(
        child: Stack(
          children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 1.0,
                // enlargeCenterPage: true,
                height: MediaQuery.of(context).size.height,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                pauseAutoPlayOnTouch: false,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: cardList.map((card) {
                return Builder(builder: (BuildContext context) {
                  return Stack(
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: Card(
                          color: Colors.red,
                          child: card,
                        ),
                      ),
                    ],
                  );
                });
              }).toList(),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: map<Widget>(cardList, (index, url) {
            //     return Container(
            //       width: 10.0,
            //       height: 10.0,
            //       margin:
            //           const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
            //       decoration: BoxDecoration(
            //         shape: BoxShape.circle,
            //         color:
            //             _currentIndex == index ? Colors.blueAccent : Colors.grey,
            //       ),
            //     );
            //   }),
            // ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: map<Widget>(cardList, (index, url) {
                        return Container(
                          width: 10.0,
                          height: 10.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentIndex == index
                                // ignore: prefer_const_constructors
                                ? Color(0xff172774)
                                : Colors.grey,
                          ),
                        );
                      }),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              // ignore: prefer_const_constructors
                              MaterialStateProperty.all<Color>(
                                  // ignore: prefer_const_constructors
                                  Color(0xff172774)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  // ignore: prefer_const_constructors
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            // ignore: prefer_const_constructors
                          ))),
                      // ignore: prefer_const_constructors
                      child: SizedBox(
                          height: 50,
                          // ignore: prefer_const_constructors
                          child: Center(
                            // ignore: prefer_const_constructors
                            child: Text(
                              'NEXT',
                              // ignore: prefer_const_constructors
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                          )),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()),
                        );
                      },
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Item1 extends StatelessWidget {
  const Item1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Carousel(
        infoname: 'Best app for Transform small invesment to big amount',
        image: 'assets/group.png');
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Carousel(
        infoname: 'Different Opportunities for your investment',
        image: 'assets/groupone.png');
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Carousel(
        infoname: 'Best App Provid you investment Safety',
        image: 'assets/grouptwo.png');
  }
}
