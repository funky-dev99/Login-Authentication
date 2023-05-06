import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;


  const MyTextField({Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(

        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blueGrey),
          ),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black45),
        ),
          fillColor: Colors.white,
          filled: true,
          helperStyle: TextStyle(color: Colors.black45)
      ),
    ),
    );
  }
}
