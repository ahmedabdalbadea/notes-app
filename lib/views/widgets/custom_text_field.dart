import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.title, this.maxLines = 1})
    : super(key: key);
  final String title;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "this filed is required";
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      decoration: InputDecoration(
        border: addBorder(),
        enabledBorder: addBorder(),
        hintText: title,
      ),
    );
  }

  OutlineInputBorder addBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
