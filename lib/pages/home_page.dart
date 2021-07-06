import 'package:ai_radio/utils/ai_utils.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: Stack(
        children: [
          VxAnimatedBox()
          .size(context.screenWidth, context.screenHeight,).withGradient(LinearGradient(colors: [AIColors.primaryColor1, AIColors.primaryColor2, ], begin: Alignment.topLeft, end: Alignment.bottomRight),)
          .make(),
        ],

      )
      // color: AIColors.primaryColor1,
    );
  }
}