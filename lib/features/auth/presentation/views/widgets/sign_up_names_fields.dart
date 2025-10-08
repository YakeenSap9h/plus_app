
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plus_app/core/utils/styles.dart';
import 'package:plus_app/core/utils/widgets/custom_text_form_field.dart';

class SignUpNamesFields extends StatelessWidget {
  const SignUpNamesFields({
    super.key,
  });

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
              child: CustomTextFormField(
                inputForm: '...',
                prefixIcon: Icon(Icons.person),
              ),
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
              child: CustomTextFormField(
                inputForm: '...',
                prefixIcon: Icon(FontAwesomeIcons.peopleGroup),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
