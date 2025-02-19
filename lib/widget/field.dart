import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  const Field({super.key, required this.hintText,});
  final String hintText;
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        hintText: (hintText),
        fillColor: Color(0xffF7F8F9),
        filled: true,
        hintStyle: TextStyle(color: Color(0xff8391A1)),
      ),
      
    );
  }
}