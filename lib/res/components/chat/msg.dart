import 'package:codes_thinkers/res/components/widgets/text.dart';
import 'package:codes_thinkers/res/const/appconst.dart';
import 'package:flutter/material.dart';

enum MessageType { Sender, Receiver }

class MessageBox extends StatelessWidget {
  final String message;
  final String time;
  final MessageType type;

  const MessageBox({
    Key? key,
    required this.message,
    required this.time,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: type == MessageType.Sender
          ? Alignment.centerRight
          : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0).copyWith(
          left: type == MessageType.Sender
              ? MediaQuery.of(context).size.height * .1
              : 0.0,
          right: type == MessageType.Receiver
              ? MediaQuery.of(context).size.height * .1
              : 0.0,
        ),
        decoration: BoxDecoration(
          color: type == MessageType.Sender
              ? primaryColors.withOpacity(0.1)
              : Colors.grey.shade300,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(type == MessageType.Sender ? 16.0 : 0),
            topRight: Radius.circular(type == MessageType.Receiver ? 16.0 : 0),
            bottomLeft: const Radius.circular(16.0),
            bottomRight: const Radius.circular(16.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            commonText(title: message, size: 18.0, color: Colors.black),
            const SizedBox(height: 10.0),
            commonText(title: time, size: 14.0, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
