import 'package:codes_thinkers/res/components/widgets/butons.dart';
import 'package:codes_thinkers/res/components/widgets/common_text_field.dart';
import 'package:codes_thinkers/res/components/widgets/text.dart';
import 'package:codes_thinkers/res/const/appconst.dart';
import 'package:codes_thinkers/views_model/profile/profile_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ChangePass extends StatelessWidget {
  const ChangePass({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var profileController = Get.put(ProfileViewModel());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: commonText(
            title: 'Change Password',
            size: 18.0,
            fontweight: FontWeight.bold,
            color: Colors.black),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 30.0, left: 8, right: 8),
        child: CommonButton(
          width: size.width * .95,
          height: 55,
          text: 'Update ',
          backgroundColor: primaryColors,
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomTextField(
              suffixicon: Icons.remove_red_eye,
              controller: profileController.passwordController,
              hintText: 'Password',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                if (value.length < 6) {
                  return 'Password must be at least 6 characters long';
                }
                return null;
              },
              icon: Icons.lock,
              title: 'Password',
            ),
            const SizedBox(height: 20),
            CustomTextField(
              suffixicon: Icons.remove_red_eye,
              controller: profileController.cpasswordController,
              hintText: 'Confirm Password',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your confirm password';
                }
                if (value.length < 6) {
                  return 'Password must be at least 6 characters long';
                }

                if (value != profileController.passwordController.text) {
                  return 'Passwords do not match';
                }
                return null;
              },
              icon: Icons.lock,
              title: 'Confirm Password',
            ),
            SizedBox(height: size.height * .05),
          ],
        ),
      ),
    );
  }
}
