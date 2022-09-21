import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../core.dart';
import '../fristPage/FristPage.dart';
import '../fristPage/SecondPage.dart';
import 'home.dart';


class CarouselWithIndicatorDemo extends StatefulWidget {
  double ScrenIndex = 0;

final List<Widget> imgList = [
          Home(),
          FristPage(),
          SecondPage(),
  ];

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.transparent,
      //appBar: AppBar(title: Text('Carousel with indicator controller demo')),
      body: Column(children: [
        Expanded(
          child: CarouselSlider(
            items: widget.imgList,
           // carouselController: _controller,
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height,
               viewportFraction: 1.0,
                //autoPlay: false,
                enlargeCenterPage: true,
                //aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 15.0),
                decoration: BoxDecoration(
                  
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.transparent
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}
