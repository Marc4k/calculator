import 'package:calculator/constants/colors.dart';
import 'package:calculator/constants/styles.dart';
import 'package:calculator/models/calculator_model.dart';
import 'package:calculator/shared/custom_text_widget.dart';
import 'package:calculator/shared/test.dart';
import 'package:calculator/widget/calculator_buttons.dart';
import 'package:calculator/widget/custom_divider_widget.dart';
import 'package:calculator/widget/glass_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List<CalculatorModel> items = [
  CalculatorModel(text: "C", color: CustomColors.blue),
  CalculatorModel(text: "±", color: CustomColors.blue),
  CalculatorModel(text: "%", color: CustomColors.blue),
  CalculatorModel(text: "/", color: CustomColors.pink),

  //------------------------------------------------------
  CalculatorModel(text: "7", color: CustomColors.white),
  CalculatorModel(text: "8", color: CustomColors.white),
  CalculatorModel(text: "9", color: CustomColors.white),
  CalculatorModel(text: "x", color: CustomColors.pink),
  //------------------------------------------------------
  CalculatorModel(text: "4", color: CustomColors.white),
  CalculatorModel(text: "5", color: CustomColors.white),
  CalculatorModel(text: "6", color: CustomColors.white),
  CalculatorModel(text: "-", color: CustomColors.pink),
  //------------------------------------------------------
  CalculatorModel(text: "1", color: CustomColors.white),
  CalculatorModel(text: "2", color: CustomColors.white),
  CalculatorModel(text: "3", color: CustomColors.white),
  CalculatorModel(text: "+", color: CustomColors.pink),
  //------------------------------------------------------
  CalculatorModel(text: "00", color: CustomColors.white),
  CalculatorModel(text: "0", color: CustomColors.white),
  CalculatorModel(text: ".", color: CustomColors.white),
  CalculatorModel(text: "=", color: CustomColors.pink),
];

String line = "";

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GlassBox(
          theChild: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(65.w, 85.h, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(text: "45+45", style: calculationLineStyle),
                  SizedBox(height: 15.h),
                  CustomTextWidget(text: "1840", style: resultStyle),
                  SizedBox(height: 25.h),
                  CustomDividerWidget(width: 290.w),
                  SizedBox(height: 75.h),
                ],
              ),
            ),
            Center(
              child: SizedBox(
                height: 380.h,
                width: 350.w,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: items.length,
                  itemBuilder: (BuildContext, index) {
                    return CalculatorButton(
                      onTap: () {},
                      text: items[index].text,
                      color: items[index].color,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
