import 'package:plus_app/consts.dart';

class Message {
  final String message;
  final String id;
  Message(this.id, this.message);

  factory Message.fromJson(Map<String, dynamic> jsonData) {
    return Message(jsonData[kID], jsonData[kMessage]);
  }
}
