import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom:40),
      height: 60,
      width: 300,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular((15)),
          ),
          color: Colors.brown),
      child: const Center(
        child: Text("Get Started",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            )),
      ),
    );
  }
}
