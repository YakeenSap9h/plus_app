import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plus_app/consts.dart';
import 'package:plus_app/features/home/presentation/manager/chat_cubit/chat_cubit.dart';
import 'package:plus_app/features/home/presentation/views/widgets/chat_buble.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryPurple,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/p_purple_back.png', height: 60),
            Text(
              'Chat',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: HomeViewBody(),
    );
  }
}

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final _controller = ScrollController();

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments;

    return Container(
      child: Column(
        children: [
          Expanded(
            child: BlocBuilder<ChatCubit, ChatState>(
              builder: (context, state) {
                var MessagesList = BlocProvider.of<ChatCubit>(
                  context,
                ).messageslist;
                return ListView.builder(
                  reverse: true,
                  controller: _controller,
                  itemCount: MessagesList.length,
                  itemBuilder: (context, index) {
                    return MessagesList[index].id == email
                        ? Chatbuble(message: MessagesList[index])
                        : ChatbubleForfriend(message: MessagesList[index]);
                  },
                );
              },
            ),
          ),
          TextField(
            controller: controller,
            onSubmitted: (data) {
              BlocProvider.of<ChatCubit>(
                context,
              ).sendMessage(message: data, email: email);
              controller.clear();
              _controller.animateTo(
                0,
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn,
              );
            },
            decoration: InputDecoration(
              hintText: 'Send a Message',
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: kPrimaryPurple, width: 2.1),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kPrimaryPurple, width: 1.7),
              ),
              suffixIcon: Icon(Icons.send, color: kPrimaryPurple),
            ),
          ),
        ],
      ),
    );
  }
}
