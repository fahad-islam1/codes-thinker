import 'package:codes_thinkers/res/components/profile/profile_details.dart';
import 'package:codes_thinkers/res/components/widgets/butons.dart';
import 'package:codes_thinkers/res/components/widgets/text.dart';
import 'package:codes_thinkers/res/const/appconst.dart';
import 'package:codes_thinkers/views/profile/edit_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: size.width,
            height: size.height * 0.25,
            decoration: BoxDecoration(
                color: primaryColors,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16))),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: size.height * .03),
                  child: commonText(
                    title: 'My Profile',
                    size: 18.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .06),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image(
                            height: size.height * .1,
                            width: size.width * .25,
                            image:
                                const AssetImage('assets/images/coding.jpg')),
                      ),
                      Column(
                        children: [
                          commonText(
                            title: 'Mr Fahad',
                            fontweight: FontWeight.bold,
                            size: 18.0,
                          ),
                          commonText(
                            title: 'fahad@gmail.com',
                            size: 16.0,
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          ProfileDetails(
            title: 'Edit Profile',
            icon: Icons.edit,
            ontop: () {
              Get.to(() => EditProfile());
            },
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.0),
            child: Divider(),
          ),
          ProfileDetails(
            title: 'Change Password',
            icon: Icons.lock,
            ontop: () {},
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.0),
            child: Divider(),
          ),
          ProfileDetails(
            title: 'Payment Method',
            icon: Icons.payment,
            ontop: () {},
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.0),
            child: Divider(),
          ),
          ProfileDetails(
            title: 'My Certificate',
            icon: Icons.system_security_update_good_sharp,
            ontop: () {},
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.0),
            child: Divider(),
          ),
          ProfileDetails(
            title: 'Privacy Policy',
            icon: Icons.privacy_tip,
            ontop: () {},
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.0),
            child: Divider(),
          ),
          ProfileDetails(
            title: 'Terms and conditions',
            icon: Icons.calendar_today_rounded,
            ontop: () {},
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.0),
            child: Divider(),
          ),
          CommonButton(
            width: size.width * .95,
            height: 60,
            text: 'Log Out ',
            backgroundColor: primaryColors,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
