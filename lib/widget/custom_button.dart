// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';


class CustomBotton extends StatelessWidget {
  CustomBotton({Key? key,this.onTap ,required this.text}) : super(key: key);
  String text;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(8),
        ),
        child:  Center(
          child: Text(text,style: const TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
