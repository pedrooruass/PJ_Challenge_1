import 'package:challenge_app/app/core/theme/app_colors.dart';
import 'package:challenge_app/app/core/theme/box_app.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'components/first_box_component.dart';
import 'components/first_navigator_component.dart';
import 'components/net_worth_componet.dart';
import 'components/second_box_component.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          leading: BoxApp(
            child: Icon(
              Icons.settings_outlined,
              size: 30,
            ),
          ),
          title: Text(
            "Grow",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          actions: [
            BoxApp(
              child: Icon(
                Icons.add,
                size: 30,
              ),
            ),
          ],
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Stack(
          children: [
            // Background
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                //COLOCAR O 0xFF ANTES
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.blue.shade500,
                      spreadRadius: 2,
                      blurRadius: 5),
                ],
              ),
              width: double.infinity,
              height: 275,
            ),
            BoxApp(
              child: ListView(
                padding: EdgeInsets.only(top: 100, bottom: 10),
                children: [
                  FirstNavigatorComponent(
                    onTap: (touchValue) {
                      setState(() {
                        index = touchValue;
                      });
                    },
                    indexSelected: index,
                  ),
                  SizedBox(height: 15),
                  // Scroll
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      NetWorthComponent(),
                      FirstBoxComponent(),
                      SecondBoxComponent(),
                      SecondBoxComponent(),
                      SecondBoxComponent(),
                      SecondBoxComponent(),
                      SecondBoxComponent(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        //  Tentar usar o drawer
        // drawer: Drawer(
        //   child: Column(
        //     children: [
        //       DrawerHeader(
        //         child: Text("Drawer Test"),
        //       ),
        //     ],
        //   ),
        // ),
        bottomNavigationBar: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
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
              items: [
                SalomonBottomBarItem(
                    icon: Icon(Icons.house),
                    title: Text("Text"),
                    selectedColor: Colors.white,
                    unselectedColor: Colors.white54),
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
        ));
  }
}
