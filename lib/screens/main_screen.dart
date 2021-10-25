import 'package:challenge_app/helps/app_colors.dart';
import 'package:challenge_app/helps/box_app.dart';
import 'package:challenge_app/screens/components/first_box_component.dart';
import 'package:challenge_app/screens/components/first_navigator_component.dart';
import 'package:challenge_app/screens/components/net_worth_componet.dart';
import 'package:challenge_app/screens/components/second_box_component.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Look if it is what move the app bar in the scroll too
        extendBody: true,
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
        bottomNavigationBar: SalomonBottomBar(
          selectedItemColor: AppColors.primaryColor,
          items: [
            SalomonBottomBarItem(
              icon: Icon(Icons.house),
              title: Text("Text"),
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.calendar_today),
              title: Text("Text"),
            ),
            SalomonBottomBarItem(
              // icon: Icon(FontAwesomeIcons.chartPie),
              icon: Icon(FontAwesomeIcons.circleNotch),
              title: Text("Text"),
            ),
            SalomonBottomBarItem(
              icon: Icon(FontAwesomeIcons.sortAmountUpAlt),
              title: Text("Grow"),
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.search),
              title: Text("Text"),
            ),
          ],
        ));
  }
}
