import 'package:flutter/material.dart';
//the padding for all the app
class BoxApp extends StatelessWidget {
  final Widget child;
  BoxApp({
    required this.child,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.5),
      child: child,
    );
  }
}
