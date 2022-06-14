import 'dart:ui';

import 'package:flutter/material.dart';

class GlassBox extends StatelessWidget {
  const GlassBox({Key? key, required this.theChild}) : super(key: key);

  final theChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            "assets/image/bg.png",
            fit: BoxFit.fill,
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white.withOpacity(0.13)),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  //begin color
                  Colors.white.withOpacity(0.42),
                  //end color
                  Colors.white.withOpacity(0.0),
                ]),
          ),
        ),
        theChild
      ]),
    );
  }
}
