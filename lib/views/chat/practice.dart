import 'package:flutter/material.dart';

class PracticeScreen extends StatelessWidget {
  const PracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Whats app'),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: 300,
            color: Colors.amber,
          ),
          Container(
            height: 100,
            width: 300,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp9QfbPM3mft0s3RMbKncqM7IflgUa9EgQnV8-s5VIeg&s')),
              // gradient: LinearGradient(colors: [Colors.pink, Colors.blue],
              // gradient: RadialGradient(colors: [Colors.pink, Colors.green]),

              boxShadow: [
                BoxShadow(blurRadius: 3, spreadRadius: 3, color: Colors.blue)
              ],

              border: Border(
                  right: BorderSide(

                      // strokeAlign: BorderSide.strokeAlignCenter,
                      color: Colors.pink)),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(22, 33),
                  bottomRight: Radius.circular(30)),
              color: Colors.green,
            ),
            child: Text('Hey Kalash'),
          ),
        ],
      ),
    );
  }
}
