import 'package:codes_thinkers/res/components/chat/msg.dart';
import 'package:codes_thinkers/res/components/widgets/text.dart';
import 'package:codes_thinkers/res/const/appconst.dart';
import 'package:codes_thinkers/views/chat/mentor_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: InkWell(
          onTap: () {
            Get.to(() => MentorProfileScreen());
          },
          child: Row(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp9QfbPM3mft0s3RMbKncqM7IflgUa9EgQnV8-s5VIeg&s'),
              ),
              SizedBox(
                width: 10,
              ),
              commonText(title: 'Mr Fahad ', size: 18.0, color: Colors.black),
            ],
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            MessageBox(
              message: 'Hey fahad where are youjdsjk jsdjdskjsd jkdsndkn',
              time: '6:01 PM',
              type: MessageType.Sender,
            ),
            MessageBox(
              message: 'Hi, I am here!',
              time: '6:05 PM',
              type: MessageType.Receiver,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt_outlined,
                            size: 30,
                          )),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Type a message',
                              border: InputBorder.none),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: primaryColors,
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.send,
                              color: Colors.white,
                              size: 30,
                            )),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
