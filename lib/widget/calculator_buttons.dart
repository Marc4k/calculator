import 'package:calculator/constants/styles.dart';
import 'package:calculator/shared/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton(
      {Key? key, required this.text, required this.color, required this.onTap})
      : super(key: key);
  final String text;
  final Color color;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
      onPressed: onTap,
      child: CustomTextWidget(
          text: text,
          style: TextStyle(
              fontSize: numpadstyle.fontSize,
              fontFamily: numpadstyle.fontFamily,
              fontWeight: numpadstyle.fontWeight,
              color: color)),
    ));
  }
}
