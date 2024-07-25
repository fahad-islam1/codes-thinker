// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:codes_thinkers/res/components/widgets/butons.dart';
import 'package:codes_thinkers/res/components/widgets/common_text_field.dart';
import 'package:codes_thinkers/res/components/widgets/text.dart';
import 'package:codes_thinkers/res/const/appconst.dart';
import 'package:codes_thinkers/views/auth/forget_password_screen.dart';
import 'package:codes_thinkers/views/auth/sign_up_screen.dart';
import 'package:codes_thinkers/views_model/auth/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var formKey = GlobalKey<FormState>();
    var loginController = Get.put(LoginViewModel());
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Padding(
              padding: EdgeInsets.only(top: size.height * .3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  commonText(
                      title: 'Welcome Back',
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
                        Align(
                          alignment: Alignment.bottomRight,
                          child: InkWell(
                            onTap: () {
                              Get.to(() => ForegetScreen());
                            },
                            child: commonText(
                                title: 'Forgot your Password?',
                                size: 16.0,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(height: size.height * .05),
                        CommonButton(
                          width: size.width * .95,
                          height: 50,
                          text: 'Sign Up ',
                          backgroundColor: primaryColors,
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              // Form is valid, proceed with your logic
                              print('Form is valid');
                              // Call your login logic here
                              // Example: loginViewModel.login(_emailController.text, _passwordController.text);
                            }
                          },
                        )
                      ],
                    ),
                  ),
                  // ),
                  SizedBox(height: size.height * .03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      commonText(
                          title: "Don't have an account?",
                          size: 18.0,
                          color: Colors.black),
                      const SizedBox(width: 10),
                      InkWell(
                        onTap: () {
                          Get.to(() => const SignUpScreen());
                        },
                        child: commonText(
                            title: 'SignUp',
                            fontweight: FontWeight.bold,
                            size: 18.0,
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
