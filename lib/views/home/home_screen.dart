import 'package:codes_thinkers/res/components/home/courses.dart';
import 'package:codes_thinkers/res/components/home/courses_details.dart';
import 'package:codes_thinkers/res/components/widgets/common_text_field.dart';
import 'package:codes_thinkers/res/components/widgets/text.dart';
import 'package:codes_thinkers/res/const/appconst.dart';
import 'package:codes_thinkers/views_model/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var homeController = Get.put(HomeViewModel());
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.window,
                      color: primaryColors,
                      size: 40,
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: primaryColors,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              FadeTransition(
                opacity: homeController
                    .opacityAnimation, // Assuming you have opacityAnimation in your view model
                child: commonText(
                  title: 'Hello , Fahad ',
                  fontweight: FontWeight.bold,
                  size: 24.0,
                  color: Colors.black,
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              commonText(
                  title: 'What do you want to learn?',
                  size: 16.0,
                  color: Colors.black54),
              CustomTextField(
                controller: homeController.searchController,
                hintText: 'Search',
                icon: Icons.search,
                title: '',
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image(
                          height: size.height * .25,
                          fit: BoxFit.fill,
                          image: const AssetImage('assets/images/home.png'))),
                  Positioned(
                    left: 10,
                    bottom: 28,
                    child: Container(
                      width: 85,
                      height: 40.85,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(201, 131, 222, 0.75),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: commonText(
                          title: 'View now', size: 16.0, color: Colors.white),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  commonText(
                      title: 'Course',
                      fontweight: FontWeight.bold,
                      size: 22.0,
                      color: Colors.black),
                  commonText(
                      title: 'View All', size: 16.0, color: Colors.black),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: homeController.coursesTypes.map((course) {
                  return Obx(
                    () => CoursesContainer(
                      onTap: () {
                        homeController.selectCourse(course);
                      },
                      isSelected: homeController.selectedCourse.value == course,
                      title: course,
                    ),
                  );
                }).toList(),
              ),
              SizedBox(
                height: 10,
              ),
              // Obx(
              //   () => SizedBox(
              //     height: size.height,
              //     child: AnimatedCourseList(
              //       courses: homeController.displayedCourses.toList(),
              //       selectedCategory: homeController.selectedCourse.value,
              //     ),
              //   ),
              // ),

              Obx(
                () => Column(
                  children: homeController.displayedCourses.map((course) {
                    return CoursesDetails(
                      title: course.title,
                      subTitle: course.rating,
                      image: course.image,
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
