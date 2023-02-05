import 'package:flutter/material.dart';

class MyTxtFields extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscoreText;
  final myTFIcons;
  const MyTxtFields(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscoreText,
      required this.myTFIcons});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
        child: TextField(
          controller: controller,
          obscureText: obscoreText,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blueGrey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              fillColor: Color.fromARGB(255, 124, 202, 165),
              prefixIcon: myTFIcons,
              prefixIconColor: Color.fromARGB(255, 0, 228, 118),
              hintText: hintText,
              filled: true),
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
