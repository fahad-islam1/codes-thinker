import 'package:codes_thinkers/res/components/chat/mentor_review.dart';
import 'package:codes_thinkers/res/components/home/courses_details.dart';
import 'package:codes_thinkers/res/components/widgets/text.dart';
import 'package:codes_thinkers/res/const/appconst.dart';
import 'package:codes_thinkers/views_model/chat/chat_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class MentorProfileScreen extends StatelessWidget {
  MentorProfileScreen({Key? key});
  String webDevTermsAndConditions =
      "Terms and Conditions of Use for WebDevify\n"
      "User Conduct: You agree to use the Platform only for lawful purposes and in a manner consistent with all applicable laws and regulations. You must not engage in any activity that interferes with or disrupts the operation of the Platform.\n"
      "User Content: Any content, including but not limited to text, images, code snippets, or other materials (\"User Content\") you submit or share on the Platform remains your responsibility. By posting User Content, you grant WebDevify a non-exclusive, royalty-free, perpetual, worldwide license to use, modify, adapt, reproduce, distribute, and display such User Content on the Platform.\n";

  @override
  Widget build(BuildContext context) {
    final ChatViewModel controller = Get.put(ChatViewModel());

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: commonText(
          title: 'Mentor Profile',
          size: 18.0,
          fontweight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0).copyWith(
              top: 20,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: size.height * .06,
                  backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp9QfbPM3mft0s3RMbKncqM7IflgUa9EgQnV8-s5VIeg&s',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          commonText(
            title: 'Mentor Profile',
            size: 18.0,
            fontweight: FontWeight.w500,
            color: Colors.black,
          ),
          Obx(() => Container(
                margin: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TabBar(
                  dividerColor: Colors.transparent,
                  splashBorderRadius: BorderRadius.circular(20),
                  controller: controller
                      .tabController, // Use the TabController from ChatViewModel
                  onTap: (index) {
                    controller.isSelected.value = index;
                  },
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.black,
                  indicator: BoxDecoration(
                    color: primaryColors.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  indicatorPadding: EdgeInsets.zero,
                  tabs: [
                    Tab(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: commonText(
                          title: 'About',
                          size: 14.0,
                          color: controller.isSelected.value == 0
                              ? Colors.white
                              : Colors.black,
                          fontweight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Tab(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: commonText(
                          title: 'Course',
                          size: 16.0,
                          color: controller.isSelected.value == 1
                              ? Colors.white
                              : Colors.black,
                          fontweight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Tab(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: commonText(
                          title: 'Review',
                          size: 16.0,
                          color: controller.isSelected.value == 2
                              ? Colors.white
                              : Colors.black,
                          fontweight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(
            child: TabBarView(
              controller:
                  controller.tabController, // Use the same TabController here
              children: [
                Padding(
                  padding: EdgeInsets.all(14),
                  child: commonText(
                      title: webDevTermsAndConditions,
                      size: 16.0,
                      color: Colors.black),
                ),
                Column(
                  children: [
                    CoursesDetails(
                        title: 'Web development',
                        subTitle: '4.5',
                        image: 'assets/images/coding.jpg'),
                    CoursesDetails(
                        title: 'Web development',
                        subTitle: '4.5',
                        image: 'assets/images/coding.jpg'),
                  ],
                ),
                Column(
                  children: [
                    MentorReview(
                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp9QfbPM3mft0s3RMbKncqM7IflgUa9EgQnV8-s5VIeg&s',
                      title: 'Mr Fahad',
                      desc:
                          'Mr Fahad is a web developer and having 5 year experience',
                    ),
                    MentorReview(
                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp9QfbPM3mft0s3RMbKncqM7IflgUa9EgQnV8-s5VIeg&s',
                      title: 'Mr Fahad',
                      desc:
                          'Mr Fahad is a web developer and having 5 year experience',
                    ),
                    MentorReview(
                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp9QfbPM3mft0s3RMbKncqM7IflgUa9EgQnV8-s5VIeg&s',
                      title: 'Mr Fahad',
                      desc:
                          'Mr Fahad is a web developer and having 5 year experience',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
