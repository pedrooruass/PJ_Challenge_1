import 'package:challenge_app/app/core/pages/widgets/bottom_navigation_bar_widget.dart';
import 'package:challenge_app/app/core/pages/main_screen/main_screen.dart';
import 'package:challenge_app/app/core/theme/app_colors.dart';
import 'package:challenge_app/app/core/theme/box_app.dart';
import 'package:flutter/material.dart';

import 'calendar_screen/calendar_screen.dart';

class Pages extends StatefulWidget {
  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  int index = 0;
  List<Widget> pages = [
    CalendarScreen(),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.green,
    ),
    MainScreen(),
    Container(
      color: Colors.blue,
    ),
  ];

  PageController pageController = PageController(initialPage: 3);

  @override
  void initState() {
    super.initState();
    pageController.notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
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
        // backgroundColor: Colors.transparent,
        backgroundColor: AppColors.primaryColor,
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
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.blue.shade500,
                    spreadRadius: 2,
                    blurRadius: 5),
              ],
            ),
            width: double.infinity,
            height: 250,
          ),
          //Pages
          PageView(
            controller: pageController,
            children: [
              // CalendarScreen(),
              // CalendarScreen(),
              // CalendarScreen(),
              // MainScreen(),
              // CalendarScreen(),

              ...pages,
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
          index: index,
          onTap: (index) {
            setState(() {
              this.index = index;
              pageController.jumpToPage(index);
            });
          }),
    );
  }
}
