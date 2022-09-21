import 'package:carousel_slider/carousel_slider.dart';
import 'package:coffeeapp/fristPage/FristPage.dart';
import 'package:coffeeapp/fristPage/SecondPage.dart';
import 'package:coffeeapp/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatelessWidget {
 MyWidget({Key? key}) : super(key: key);
    int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Widget> imgList=

        [
          Home(),
          FristPage(),
          SecondPage(),
        ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            CarouselSlider(
              items: imgList,
              options: CarouselOptions(
                viewportFraction: 1.0,
                height: MediaQuery.of(context).size.height,
                
                //enlargeCenterPage: true
              ),
              
            ),
             Container(
             // padding: EdgeInsets.only(bottom: 500),
              height: 0,
               child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                            .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                  ),
                );
            }).toList(),
          ),
             ),
          ],
        ),
        
      ),
    );
  }
}
