import 'package:challenge_app/app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final void Function(int) onTap;
  final int index;

  BottomNavigationBarWidget({Key? key, required this.onTap, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
        decoration: BoxDecoration(
            color: AppColors.bottomColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: AppColors.bottomColor,
                spreadRadius: 1,
                blurRadius: 3,
              ),
            ]),
        child: SalomonBottomBar(
          currentIndex: index,
          onTap: onTap,
          items: [
            SalomonBottomBarItem(
              icon: Icon(Icons.house),
              title: Text("Text"),
              selectedColor: Colors.white,
              unselectedColor: Colors.white54,
            ),
            SalomonBottomBarItem(
                icon: Icon(Icons.calendar_today),
                title: Text("Text"),
                selectedColor: Colors.white,
                unselectedColor: Colors.white54),
            SalomonBottomBarItem(
                // icon: Icon(FontAwesomeIcons.chartPie),
                icon: Icon(FontAwesomeIcons.circleNotch),
                title: Text("Text"),
                selectedColor: Colors.white,
                unselectedColor: Colors.white54),
            SalomonBottomBarItem(
                icon: Icon(FontAwesomeIcons.sortAmountUpAlt),
                title: Text("Grow"),
                selectedColor: Colors.white,
                unselectedColor: Colors.white54),
            SalomonBottomBarItem(
                icon: Icon(Icons.search),
                title: Text("Text"),
                selectedColor: Colors.white,
                unselectedColor: Colors.white54),
          ],
        ),
      ),
    );
  }
}
