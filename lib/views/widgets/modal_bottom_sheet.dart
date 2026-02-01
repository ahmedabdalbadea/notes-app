import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/custom_elevated_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class ModalBottomSheet extends StatelessWidget {
  const ModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(top: 28, left: 24, right: 24),
      child: Column(
        children: [
          CustomTextField(title: "Title"),
          SizedBox(height: 16),
          CustomTextField(title: "Content", maxLines: 5),
          SizedBox(height: 16),
          CustomElevatedButton()
        ],
      ),
    );
  }
}
