import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.inputForm,
    this.onChanged,
    this.obscureText,
    required this.prefixIcon,
  });

  final String? inputForm;
  final Function(String)? onChanged;
  final bool? obscureText;
  final Icon prefixIcon;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscureText ?? false,
      validator: (data) {
        if (data!.isEmpty) {
          return 'field is required';
        }
        return null;
      },
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon,
        label: Text(
          '${widget.inputForm}',
          style: TextStyle(
            color: Colors.white.withValues(alpha: .5),
            fontWeight: FontWeight.w500,
          ),
        ),
        //! borders
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.red),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.white.withValues(alpha: .5)),
        ),

        hintText: 'Enter your ${widget.inputForm}',
        hintStyle: TextStyle(
          color: Colors.white.withValues(alpha: .3),
          fontWeight: FontWeight.w500,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.white.withValues(alpha: .3)),
        ),
      ),
    );
  }
}
