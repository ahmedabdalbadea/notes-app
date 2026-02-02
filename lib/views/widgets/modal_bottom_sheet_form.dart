import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_elevated_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class ModalBottomSheetForm extends StatelessWidget {
  const ModalBottomSheetForm({super.key});
  @override
  Widget build(BuildContext context) {
  GlobalKey<FormState> fromKey = GlobalKey();
  
    return Form(
      key: fromKey,
      child: Column(
        children: [
          CustomTextField(title: "Title"),
          SizedBox(height: 16),
          CustomTextField(title: "Content", maxLines: 5),
          SizedBox(height: 16),
          CustomElevatedButton(title: "Add", onPressed: () {
            if(fromKey.currentState!.validate()){
              fromKey.currentState!.save();
            }
            else {

            }
          }),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
