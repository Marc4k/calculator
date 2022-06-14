import 'package:calculator/widget/glass_box.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GlassBox(
              theChild: SafeArea(
            child: Column(
              children: [],
            ),
          )),
        ],
      ),
    );
  }
}
