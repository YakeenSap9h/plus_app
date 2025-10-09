import 'package:flutter/material.dart';
import 'package:plus_app/consts.dart';
import 'package:plus_app/features/home/data/models/message.dart';

class Chatbuble extends StatelessWidget {
  const Chatbuble({required this.message, super.key});
  final Message message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: 150,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(left: 10),
        alignment: Alignment.centerLeft,
        height: 59,
        decoration: BoxDecoration(
          color: kPrimaryPurple,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Text(style: TextStyle(color: Colors.white), message.message),
      ),
    );
  }
}

class ChatbubleForfriend extends StatelessWidget {
  const ChatbubleForfriend({required this.message, super.key});
  final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: 150,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(left: 10),
        alignment: Alignment.centerLeft,
        height: 59,
        decoration: BoxDecoration(
          color: Color(0xff025D72),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
        child: Text(style: TextStyle(color: Colors.white), message.message),
      ),
    );
  }
}