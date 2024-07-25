import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Course {
  final String title;
  final String image;
  final String rating;

  Course({
    required this.title,
    required this.image,
    required this.rating,
  });
}

class HomeViewModel extends GetxController
    with GetSingleTickerProviderStateMixin {
  var searchController = TextEditingController();

  List<String> coursesTypes = ['All', 'Design', 'Programming', 'Ui/Ux'];

  List<Course> allCourses = [];
  List<Course> design = [
    Course(
        title: 'Adobe Photoshop',
        image: 'assets/images/camera.png',
        rating: '5.0'),
    Course(
        title: 'Illustrator',
        image: 'assets/images/3d design.png',
        rating: '4.8'),
  ];

  List<Course> programing = [
    Course(title: 'C++', image: 'assets/images/cpp.png', rating: '4.5'),
    Course(
        title: 'Web Development',
        image: 'assets/images/webdev.png',
        rating: '4.7'),
    Course(
        title: 'App Development',
        image: 'assets/images/appdev.png',
        rating: '4.9'),
  ];
  List<Course> uiux = [
    Course(
        title: 'Adobe Photoshop',
        image: 'assets/images/camera.png',
        rating: '5.0'),
    Course(
        title: 'Illustrator',
        image: 'assets/images/3d design.png',
        rating: '4.8'),
  ];

  RxList<Course> displayedCourses = <Course>[].obs;

  RxString selectedCourse = 'All'.obs;

  late AnimationController _opacityAnimationController;
  late Animation<double> opacityAnimation;

  @override
  void onInit() {
    _opacityAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    opacityAnimation = Tween<double>(
      begin: 0.0, // Starting opacity value
      end: 1.0, // Ending opacity value
    ).animate(_opacityAnimationController);

    _opacityAnimationController.forward();

    // Concatenate lists of all categories
    allCourses.addAll(design);
    allCourses.addAll(programing);
    allCourses.addAll(uiux);

    // Set initially displayed courses to all courses
    displayedCourses.assignAll(allCourses);

    super.onInit();
  }

  @override
  void onClose() {
    _opacityAnimationController.dispose();
    super.onClose();
  }

  void selectCourse(String course) {
    selectedCourse.value = course;
    if (course == 'All') {
      // If 'All' is selected, display all courses
      displayedCourses.assignAll(allCourses);
    } else if (course == 'Design') {
      // If 'Design' is selected, display design courses
      displayedCourses.assignAll(design);
    } else if (course == 'Programming') {
      // If 'Programming' is selected, display programming courses
      displayedCourses.assignAll(programing);
    } else if (course == 'Ui/Ux') {
      // If 'Ui/Ux' is selected, display UI/UX courses
      displayedCourses.assignAll(uiux);
    }

    print('Selected category: $course');
    print('Length of displayed courses: ${displayedCourses.length}');
  }
}
