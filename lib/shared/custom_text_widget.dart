import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({Key? key, required this.text, required this.style})
      : super(key: key);
  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style);
  }
}
