import 'package:flutter/material.dart';

class Passfield extends StatelessWidget {
  const Passfield({
    super.key, required this.hintText,
  });
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        fillColor: Color(0xffF7F8F9),
          filled: true,
        hintText: hintText,
        hintStyle: TextStyle(color: Color(0xff8391A1)),
      ),
    );
  }
}
