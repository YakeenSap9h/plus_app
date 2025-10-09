import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plus_app/consts.dart';
import 'package:plus_app/features/home/data/models/message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());
  CollectionReference messages = FirebaseFirestore.instance.collection(
    kMessagesCollections,
  );

  List<Message> messageslist = [];

  void sendMessage({required String message, required email}) {
    print('ggggggggggggggggg\n');
    print("SENDING TO FIRESTORE: id=$email, message=$message");
    try {
      messages.add({kMessage: message, kCreatedAt: DateTime.now(), kID: email});
    } catch (e) {
      print('ERROR ENDING $e');
    }
  }

  void getMessage() {
    messages.orderBy(kCreatedAt, descending: true).snapshots().listen((event) {
      messageslist.clear();
      for (var doc in event.docs) {
        print("dooc ==== ${doc}");
        var data = doc.data() as Map<String, dynamic>;
        messageslist.add(Message.fromJson(data));
      }
      print("success in getMessage");
      emit(ChatSuccess(messageslist: messageslist));
    });
  }
}
