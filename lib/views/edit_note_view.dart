import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomAppBar(
              title: "Edit Note",
              icon: Icon(Icons.check),
              onPressed: () {},
            ),
            SizedBox(height: 16),
            CustomTextField(title: "Title"),
            SizedBox(height: 16),
            CustomTextField(title: "Content", maxLines: 5),
          ],
        ),
      ),
    );
  }
}
