import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class CustomDividerWidget extends StatelessWidget {
  const CustomDividerWidget({Key? key, required this.width}) : super(key: key);
  final double width;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(
          width,
          (width * 0.042105263157894736)
              .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: RPSCustomPainter(),
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0007947263, size.height * 0.5000000);
    path_0.lineTo(size.width * 0.02105263, size.height * 0.9811250);
    path_0.lineTo(size.width * 0.04131053, size.height * 0.5000000);
    path_0.lineTo(size.width * 0.02105263, size.height * 0.01887475);
    path_0.lineTo(size.width * 0.0007947263, size.height * 0.5000000);
    path_0.close();
    path_0.moveTo(size.width * 0.9992035, size.height * 0.5000000);
    path_0.lineTo(size.width * 0.9789474, size.height * 0.01887475);
    path_0.lineTo(size.width * 0.9586912, size.height * 0.5000000);
    path_0.lineTo(size.width * 0.9789474, size.height * 0.9811250);
    path_0.lineTo(size.width * 0.9992035, size.height * 0.5000000);
    path_0.close();
    path_0.moveTo(size.width * 0.02105263, size.height * 0.5833333);
    path_0.lineTo(size.width * 0.9789474, size.height * 0.5833333);
    path_0.lineTo(size.width * 0.9789474, size.height * 0.4166667);
    path_0.lineTo(size.width * 0.02105263, size.height * 0.4166667);
    path_0.lineTo(size.width * 0.02105263, size.height * 0.5833333);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.white.withOpacity(0.6);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
