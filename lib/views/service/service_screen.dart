import 'package:codes_thinkers/res/components/widgets/common_text_field.dart';
import 'package:codes_thinkers/res/components/widgets/text.dart';
import 'package:codes_thinkers/res/const/appconst.dart';
import 'package:codes_thinkers/views_model/service/service_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var serviceController = Get.put(ServiceViewModel());
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
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
            CustomTextField(
              controller: serviceController.searchController,
              hintText: 'Search',
              icon: Icons.search,
              title: '',
            ),
            const SizedBox(
              height: 10,
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Stack(
                    children: [
                      Image(image: AssetImage('assets/images/coding.jpg')),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          height: size.height * .06,
                          width: size.width,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.5)),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: primaryColors,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  height: size.height * 0.05,
                  width: size.width * .8,
                  child: commonText(
                    title: 'Web Devlopment',
                    size: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                commonText(
                    title:
                        "Revolutionize your online identity with our comprehensive web development solutions. Our team of seasoned developers combines creativity with cutting-edge technology to deliver websites that captivate and engage your audience. From sleek designs to seamless user experiences.",
                    size: 18.0,
                    color: Colors.black),
              ],
            )
            // ListView.builder(
            //   itemBuilder: (context, index) {
            //     return Container();
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
