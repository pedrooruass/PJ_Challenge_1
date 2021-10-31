import 'package:challenge_app/app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class FirstNavigatorComponent extends StatelessWidget {
  final void Function(int) onTap;
  final int indexSelected;
  FirstNavigatorComponent({required this.onTap, required this.indexSelected});
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
              buildInkWell(text: "Sumary", index: 0),
              buildInkWell(text: "Assets", index: 1),
              buildInkWell(text: "Debt", index: 2),
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
