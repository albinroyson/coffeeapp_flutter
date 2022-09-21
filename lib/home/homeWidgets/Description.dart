import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Text("The best grain, the finest roast, the most powerful flavor.",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
          textAlign: TextAlign.center),
    );
  }
}
