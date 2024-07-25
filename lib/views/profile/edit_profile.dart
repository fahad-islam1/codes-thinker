import 'package:codes_thinkers/res/components/widgets/butons.dart';
import 'package:codes_thinkers/res/components/widgets/common_text_field.dart';
import 'package:codes_thinkers/res/components/widgets/text.dart';
import 'package:codes_thinkers/res/const/appconst.dart';
import 'package:codes_thinkers/views_model/profile/profile_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var profileController = Get.put(ProfileViewModel());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: commonText(
            title: 'Edit Profile',
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
            Align(
              alignment: Alignment.topCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Stack(
                  children: [
                    Image(
                        height: size.height * .1,
                        width: size.width * .25,
                        image: const AssetImage('assets/images/coding.jpg')),
                    Icon(
                      Icons.edit,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            CustomTextField(
              controller: profileController.nameController,
              hintText: 'Name',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your Name';
                }
                return null;
              },
              icon: Icons.person,
              title: 'Name',
            ),
            const SizedBox(height: 10),
            CustomTextField(
              controller: profileController.nameController,
              hintText: 'Email',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your Email';
                }
                return null;
              },
              icon: Icons.email,
              title: 'Email',
            ),
            const SizedBox(height: 10),
            CustomTextField(
              controller: profileController.nameController,
              hintText: 'Mobile Number',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your mobile number';
                }
                return null;
              },
              icon: Icons.call,
              title: 'Mobile Number',
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
