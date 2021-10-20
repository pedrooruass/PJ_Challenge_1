import 'package:flutter/material.dart';

import 'screens/main_screen.dart';

main(List<String> args) => runApp(MyApp());

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
