import 'package:codes_thinkers/res/components/widgets/text.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: commonText(
            title: 'Privacy & policy',
            size: 18.0,
            fontweight: FontWeight.bold,
            color: Colors.black),
      ),
    );
  }
}
