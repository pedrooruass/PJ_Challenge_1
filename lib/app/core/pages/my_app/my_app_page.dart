import 'package:challenge_app/app/core/pages/main_screen/main_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Challenge 1",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Hk Grotesk",
      ),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
