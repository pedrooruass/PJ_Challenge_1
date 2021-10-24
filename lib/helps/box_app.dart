import 'package:flutter/material.dart';

class BoxApp extends StatelessWidget {
  final Widget child;
  BoxApp({
    this.child,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: child,
    );
  }
}