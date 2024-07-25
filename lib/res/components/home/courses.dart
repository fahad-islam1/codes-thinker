// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:codes_thinkers/res/components/widgets/text.dart';
import 'package:codes_thinkers/res/const/appconst.dart';

class CoursesContainer extends StatelessWidget {
  String title;
  bool isSelected;
  final onTap;
  CoursesContainer({
    Key? key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 41,
        padding: isSelected
            ? EdgeInsets.symmetric(
                horizontal: 14,
              )
            : EdgeInsets.symmetric(
                horizontal: 5,
              ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: isSelected ? primaryColors : Colors.white,
            borderRadius:
                isSelected ? BorderRadius.circular(16) : BorderRadius.zero),
        child: commonText(
            title: title,
            size: 19.0,
            color: isSelected ? Colors.white : Colors.black),
      ),
    );
  }
}
