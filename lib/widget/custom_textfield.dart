import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({Key? key,this.onChanged ,this.hintText,this.textInputType}) : super(key: key);

  String? hintText;
  TextInputType? textInputType;
  Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        border:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
