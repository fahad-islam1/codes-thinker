// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:codes_thinkers/res/components/widgets/text.dart';

class CoursesDetails extends StatelessWidget {
  const CoursesDetails({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
  });
  final String title;
  final String subTitle;
  final String image;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.all(10),
      width: size.width,
      height: size.height * .17,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.6),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3))
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(children: [
        const SizedBox(
          width: 10,
        ),
        Container(
          padding: const EdgeInsets.all(14),
          width: size.height * .15,
          height: size.height * .15,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(
            height: size.height * .05,
            width: size.height * .1,
            image,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            commonText(
                title: title,
                fontweight: FontWeight.bold,
                size: 18.0,
                color: Colors.black),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                const SizedBox(
                  width: 10,
                ),
                commonText(title: subTitle, size: 16.0, color: Colors.black),
              ],
            )
          ],
        )
      ]),
    );
  }
}
