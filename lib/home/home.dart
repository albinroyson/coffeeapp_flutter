import 'dart:ui';

import 'package:coffeeapp/home/homeWidgets/Backgroundimage.dart';
import 'package:coffeeapp/home/homeWidgets/Button.dart';
import 'package:coffeeapp/home/homeWidgets/Description.dart';
import 'package:coffeeapp/home/homeWidgets/Qoutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
         // margin: EdgeInsets.only(bottom: 90),
          child: Stack(
            children: [
              Backgroundimage(),
              Column(
                children: [
                  Spacer(),
                  Qoutes(),
                  Description(),
                  Button(),
                ],
              )
            ],
          ),
        ),
        
      ),
    );
  }
}
