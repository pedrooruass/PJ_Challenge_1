import 'package:challenge_app/app/core/theme/box_app.dart';
import 'package:flutter/material.dart';

import 'components/first_box_component.dart';
import 'components/row_navigator_component.dart';
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
          RowNavigatorComponent(
            onTap: (touchValue) {
              setState(() {
                index = touchValue;
              });
            },
            indexSelected: index,
            name1: "Sumary",
            name2: "Assets",
            name3: "Debt",
          ),
          SizedBox(height: 20),
          // Scroll
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 20,
              ),
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
