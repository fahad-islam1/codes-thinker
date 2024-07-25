import 'package:codes_thinkers/res/components/widgets/butons.dart';
import 'package:codes_thinkers/res/components/widgets/common_text_field.dart';
import 'package:codes_thinkers/res/components/widgets/text.dart';
import 'package:codes_thinkers/res/const/appconst.dart';
import 'package:codes_thinkers/views_model/auth/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForegetScreen extends StatelessWidget {
  const ForegetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var loginController = Get.put(LoginViewModel());
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            SizedBox(height: size.height * .09),
            commonText(
                title: 'Forgot your Password',
                fontweight: FontWeight.bold,
                size: 18.0,
                color: Colors.black),
            SizedBox(height: size.height * .02),
            commonText(
                title:
                    '     Enter your email address and we will     share a link to create a new password.',
                fontweight: FontWeight.normal,
                size: 16.0,
                color: Colors.black),
            SizedBox(height: size.height * .05),
            CustomTextField(
              controller: loginController.forgetemailController,
              hintText: 'Email',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                if (value.contains('@')) {
                  return 'Please enter your valid email';
                }
                return null;
              },
              icon: Icons.email,
              title: 'Email',
            ),
            SizedBox(height: size.height * .05),
            CommonButton(
              width: size.width * .95,
              height: 50,
              text: 'Send ',
              backgroundColor: primaryColors,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
