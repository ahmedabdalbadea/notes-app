import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_elevated_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class ModalBottomSheetForm extends StatefulWidget {
  const ModalBottomSheetForm({super.key});

  @override
  State<ModalBottomSheetForm> createState() => _ModalBottomSheetFormState();
}

class _ModalBottomSheetFormState extends State<ModalBottomSheetForm> {
  String? title, subTitle;

  GlobalKey<FormState> fromKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: fromKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            title: "Title",
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 16),
          CustomTextField(
            title: "Content",
            onSaved: (value) {
              subTitle = value;
            },
            maxLines: 5,
          ),
          SizedBox(height: 16),
          CustomElevatedButton(
            title: "Add",
            onPressed: () {
              if (fromKey.currentState!.validate()) {
                fromKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
