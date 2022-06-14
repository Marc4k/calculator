import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

double test(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  print(width);
  width = (width - 200.w) / 2;
  print(width);
  return width;
}
