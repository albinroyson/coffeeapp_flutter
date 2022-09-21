import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Qoutes extends StatelessWidget {
  const Qoutes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
                padding: const EdgeInsets.only(bottom: 0),
                // ignore: prefer_const_literals_to_create_immutables
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  const Padding(
                      padding: const EdgeInsets.only(bottom: 10, left: 0),
                      child: SizedBox(
                        width: 500,
                        child:
                            Text("Good coffee,\nGood friends,\nlet it blends",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 32,
                                  color: Colors.white,
                                )),
                      ))
                ]))));
  }
}
