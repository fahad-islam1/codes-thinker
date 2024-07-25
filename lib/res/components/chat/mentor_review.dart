// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:codes_thinkers/res/components/widgets/text.dart';

class MentorReview extends StatelessWidget {
  String image;
  String title;
  String desc;
  MentorReview({
    Key? key,
    required this.image,
    required this.title,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        ListTile(
            leading: CircleAvatar(
              radius: size.height * .05,
              backgroundImage: NetworkImage(
                image,
              ),
            ),
            title: commonText(
              title: title,
              size: 18.0,
              color: Colors.black,
            ),
            subtitle: Row(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 15,
                      )),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: commonText(
            title: desc,
            size: 15.0,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Divider(),
        )
      ],
    );
  }
}
