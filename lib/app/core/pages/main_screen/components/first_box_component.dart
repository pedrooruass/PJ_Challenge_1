import 'package:challenge_app/app/core/pages/main_screen/components/row_navigator_component.dart';
import 'package:flutter/material.dart';

class FirstBoxComponent extends StatefulWidget {
  @override
  State<FirstBoxComponent> createState() => _FirstBoxComponentState();
}

class _FirstBoxComponentState extends State<FirstBoxComponent> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      height: 250,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "asset/grafic.jpeg",
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Container(
            width: 300,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(15),
            ),
            child: RowNavigatorComponent(
              onTap: (touchIndex) {
                setState(() {
                  index = touchIndex;
                });
              },
              indexSelected: index,
              name1: "1M",
              name2: "3M",
              name3: "6M",
              name4: "1Y",
            ),
          ),
        ],
      ),
    );
  }
}
