import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assests/coffee3.webp"),
          fit: BoxFit.cover
        ),
      ),
    )),
    );
  }
}
