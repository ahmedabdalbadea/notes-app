import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_elevated_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:notes_app/views/widgets/modal_bottom_sheet_form.dart';

class ModalBottomSheet extends StatelessWidget {
  const ModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsetsGeometry.only(
          top: 28,
          left: 24,
          right: 24,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: ModalBottomSheetForm(),
      ),
    );
  }
}
