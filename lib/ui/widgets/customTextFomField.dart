import 'package:flutter/material.dart';

typedef Validator = String? Function(String?);

class CustomTextFormField extends StatelessWidget {
  String label;
  Validator? validator;
  TextInputType? keyboardType;
  bool isSecureText;
  Widget? suffixIcon;
  TextEditingController? controller;

  CustomTextFormField(
      {required this.label,
      this.validator,
      this.keyboardType,
      this.isSecureText = false,
      this.suffixIcon,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      child: TextFormField(
        controller: controller,
        obscureText: isSecureText,
        keyboardType: keyboardType,
        validator: validator,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          labelText: label,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(22),
              borderSide: BorderSide(color: Colors.grey, width: 2)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(22),
              borderSide: BorderSide(color: Colors.blue, width: 2)),
        ),
      ),
    );
  }
}
