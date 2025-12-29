import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_elevated_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddModelBottonSheet extends StatelessWidget {
  const AddModelBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(hint: "Title"),
            SizedBox(height: 16),
            CustomTextField(hint: "Content", maxLines: 5),
            SizedBox(height: 80),
            CustomElevatedButton(title: "Add"),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
