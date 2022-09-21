import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FristPage extends StatelessWidget {
  const FristPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assests/coffee2.jpeg"),
          fit: BoxFit.cover
        ),
      ),
    )),
    );
  }
}
