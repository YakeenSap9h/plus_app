
import 'package:flutter/material.dart';
import 'package:plus_app/core/utils/styles.dart';

class SignUpNamesFields extends StatefulWidget {
  const SignUpNamesFields({
    super.key,
  });

  @override
  State<SignUpNamesFields> createState() => _SignUpNamesFieldsState();
}

class _SignUpNamesFieldsState extends State<SignUpNamesFields> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('First-Name', style: Styles.textStyle14),
            SizedBox(height: 12),
    
            SizedBox(
              width: 150,
              // child: CustomTextFormField(
              //   textEditingController: ,
              //   inputForm: '...',
              //   prefixIcon: Icon(Icons.person),
              // ),
            ),
          ],
        ),
        SizedBox(width: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Family-Name', style: Styles.textStyle14),
            SizedBox(height: 12),
    
            SizedBox(
              width: 150,
              // child: CustomTextFormField(
              //   textEditingController:  ,
              //   inputForm: '...',
              //   prefixIcon: Icon(FontAwesomeIcons.peopleGroup),
              // ),
            ),
          ],
        ),
      ],
    );
  }
}
