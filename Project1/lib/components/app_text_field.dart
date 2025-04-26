import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  const AppTextField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        filled: true,
        labelText: hint,
        fillColor: Colors.white.withOpacity(0.5),
      ),
    );
  }
}
