import 'package:codes_thinkers/res/const/appconst.dart';
import 'package:codes_thinkers/res/const/onboarding_list.dart';
import 'package:codes_thinkers/res/components/widgets/butons.dart';
import 'package:codes_thinkers/res/components/widgets/text.dart';
import 'package:codes_thinkers/views/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../views_model/onboarding/onboarding_view_model.dart';

class OnBoardingScreens extends StatefulWidget {
  const OnBoardingScreens({super.key});

  @override
  State<OnBoardingScreens> createState() => _OnBoardingScreensState();
}

class _OnBoardingScreensState extends State<OnBoardingScreens> {
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var onboardingModel = Get.put(OnObardingModel());
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        onPageChanged: (value) {
          onboardingModel.currentindex.value = value;
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 25.0, right: 20),
                child: Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      Get.offAll(() => HomeScreen());
                    },
                    child: commonText(
                        title: 'Skip',
                        fontweight: FontWeight.w400,
                        size: 16.0,
                        color: primaryColors),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * .18,
              ),
              SvgPicture.asset(
                image[index],
                fit: BoxFit.cover, // or any other BoxFit value you need
              ),
              commonText(
                  title: title[index], fontweight: FontWeight.w500, size: 22.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        if (onboardingModel.currentindex > 0) {
                          pageController.previousPage(
                            duration: Duration(milliseconds: 30),
                            curve: Curves.bounceIn,
                          );
                        }
                      },
                      child: Visibility(
                        visible: onboardingModel.currentindex > 0,
                        child: commonText(
                          title: 'Back',
                          fontweight: FontWeight.bold,
                          size: 24.0,
                          color: primaryColors,
                        ),
                      ),
                    ),
                    CommonButton(
                      height: size.height * .07,
                      width: size.width * .45,
                      onPressed: () {
                        if (onboardingModel.currentindex == title.length - 1) {
                          Get.offAll(() => HomeScreen());
                        }
                        pageController.nextPage(
                            duration: Duration(milliseconds: 30),
                            curve: Curves.bounceIn);
                      },
                      text: 'Next',
                      backgroundColor: primaryColors,
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
