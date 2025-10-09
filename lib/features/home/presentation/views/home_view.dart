
import 'package:flutter/material.dart';
import 'package:plus_app/consts.dart';
import 'package:plus_app/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
       centerTitle: true,
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
       
      ) ,body: HomeViewBody(),);
  }
}
