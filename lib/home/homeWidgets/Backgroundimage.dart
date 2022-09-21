import 'dart:ui';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Backgroundimage extends StatelessWidget {
  const Backgroundimage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assests/coffee.jpeg"),
          fit: BoxFit.cover
        ),
      ),
    );
  }
}
