// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:codes_thinkers/res/components/widgets/butons.dart';
import 'package:codes_thinkers/res/components/widgets/common_text_field.dart';
import 'package:codes_thinkers/res/components/widgets/text.dart';
import 'package:codes_thinkers/res/const/appconst.dart';
import 'package:codes_thinkers/views/auth/login_screen.dart';
import 'package:codes_thinkers/views_model/auth/sign_up_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var formKey = GlobalKey<FormState>();

    var loginController = Get.put(SignUpViewModel());
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Padding(
              padding: EdgeInsets.only(top: size.height * .2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  commonText(
                      title: 'Create An Account',
                      fontweight: FontWeight.bold,
                      size: 18.0,
                      color: primaryColors),
                  const SizedBox(
                    height: 10,
                  ),
                  // Obx(
                  //   () =>
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        CustomTextField(
                          controller: loginController.nameController,
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
                          controller: loginController.emailController,
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
                        const SizedBox(height: 10),
                        CustomTextField(
                          suffixicon: Icons.remove_red_eye,
                          controller: loginController.passwordController,
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
                        const SizedBox(height: 10),
                        CustomTextField(
                          suffixicon: Icons.remove_red_eye,
                          controller: loginController.cpasswordController,
                          hintText: 'Confirm Password',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your confirm password';
                            }
                            if (value.length < 6) {
                              return 'Password must be at least 6 characters long';
                            }

                            if (value !=
                                loginController.passwordController.text) {
                              return 'Passwords do not match';
                            }
                            return null;
                          },
                          icon: Icons.lock,
                          title: 'Confirm Password',
                        ),
                        SizedBox(height: size.height * .05),
                        CommonButton(
                          width: size.width * .95,
                          height: 50,
                          text: 'Sign Up ',
                          backgroundColor: primaryColors,
                          onPressed: () {
                            if (formKey.currentState!.validate()) {}
                          },
                        )
                      ],
                    ),
                    // ),
                  ),
                  SizedBox(height: size.height * .03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      commonText(
                          title: 'Already have an account?',
                          size: 18.0,
                          color: Colors.black),
                      const SizedBox(width: 10),
                      InkWell(
                        onTap: () {
                          Get.to(() => LoginScreen());
                        },
                        child: commonText(
                            title: 'Login',
                            fontweight: FontWeight.bold,
                            size: 16.0,
                            color: primaryColors),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
