// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:codes_thinkers/res/components/widgets/text.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({
    Key? key,
    required this.title,
    required this.icon,
    required this.ontop,
  }) : super(key: key);
  final String title;
  final icon;
  final ontop;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontop,
      leading: Icon(
        icon,
        size: 30,
      ),
      title: commonText(title: title, size: 18.0, color: Colors.black),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
