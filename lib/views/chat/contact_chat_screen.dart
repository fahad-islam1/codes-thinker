import 'package:codes_thinkers/res/components/widgets/common_text_field.dart';
import 'package:codes_thinkers/res/components/widgets/text.dart';
import 'package:codes_thinkers/views/chat/chat_screen.dart';
import 'package:codes_thinkers/views_model/chat/chat_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactChatScreen extends StatelessWidget {
  const ContactChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ChatViewModel());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: commonText(
            title: 'Message',
            size: 18.0,
            fontweight: FontWeight.bold,
            color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            CustomTextField(
              controller: controller.searchController,
              hintText: 'Search',
              icon: Icons.search,
              title: '',
            ),
            SizedBox(
              height: 10.0,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp9QfbPM3mft0s3RMbKncqM7IflgUa9EgQnV8-s5VIeg&s'),
              ),
              title: commonText(
                  title: 'Mr Fahad', size: 18.0, color: Colors.black),
              subtitle: commonText(
                  title: 'Hey whats up', size: 12.0, color: Colors.black),
              trailing: commonText(
                  title: '2 min ago', size: 12.0, color: Colors.black),
              onTap: () {
                Get.to(ChatScreen());
              },
            ),
            Divider(
              color: Colors.grey.shade300,
            )
          ],
        ),
      ),
    );
  }
}
