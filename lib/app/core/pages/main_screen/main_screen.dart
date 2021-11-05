import 'package:challenge_app/app/core/theme/box_app.dart';
import 'package:flutter/material.dart';

import 'components/first_box_component.dart';
import 'components/first_navigator_component.dart';
import 'components/net_worth_componet.dart';
import 'components/second_box_component.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return BoxApp(
            child: ListView(
              padding: EdgeInsets.only(top: 15, bottom: 10),
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
                    // Take all this out after
                    SecondBoxComponent(),
                    SecondBoxComponent(),
                    SecondBoxComponent(),
                    SecondBoxComponent(),
                  ],
                ),
              ],
            ),
          );
    
  }
}
