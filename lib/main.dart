import 'package:flutter/material.dart';
import 'package:ai_radio/pages/home_page.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI Radio',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}