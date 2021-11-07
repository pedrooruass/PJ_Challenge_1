import 'package:challenge_app/app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class RowNavigatorComponent extends StatelessWidget {
  final void Function(int) onTap;
  final int indexSelected;
  final String name1;
  final String name2;
  final String name3;
  final String? name4;
  final String? name5;
  RowNavigatorComponent({
    required this.onTap,
    required this.indexSelected,
    required this.name1,
    required this.name2,
    required this.name3,
    this.name4,
    this.name5,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(2),
          width: 300,
          height: 35,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildInkWell(text: name1, index: 0),
              buildInkWell(text: name2, index: 1),
              buildInkWell(text: name3, index: 2),
              if(name4 != null) buildInkWell(text: name4!, index: 3),
              if(name5 != null) buildInkWell(text: name5!, index: 4),
              
            ],
          ),
        ),
      ],
    );
  }

  Widget buildInkWell({String text = "Text", required int index}) {
    return Expanded(
      child: InkWell(
        onTap: () => onTap(index),
        child: Container(
          alignment: Alignment.center,
          height: 30,
          decoration: BoxDecoration(
            color: indexSelected == index
                ? AppColors.secondColor
                : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [
                Color(0xFFFFC85B),
                Color(0xFFEA7652),
                AppColors.secondColor,
              ],
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: indexSelected == index ? Colors.white : Colors.black,
              fontWeight:
                  indexSelected == index ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
