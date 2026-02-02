import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
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
      child: BlocListener<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print(state.errMsg);
          }
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
        },
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
                  BlocProvider.of<AddNoteCubit>(context).addNote(
                    NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: DateFormat.yMMMd().format(DateTime.now()),
                      color: Colors.blueAccent.toARGB32(),
                    ),
                  );
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
