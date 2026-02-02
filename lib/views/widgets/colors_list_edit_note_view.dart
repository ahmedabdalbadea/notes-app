import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/color_item.dart';

class ColorsListEditNoteView extends StatefulWidget {
  const ColorsListEditNoteView({Key? key, required this.note})
    : super(key: key);
  final NoteModel note;
  @override
  State<ColorsListEditNoteView> createState() => _ColorsListEditNoteViewState();
}

class _ColorsListEditNoteViewState extends State<ColorsListEditNoteView> {
  int? colorSelected;
  @override
  Widget build(BuildContext context) {
    colorSelected = kNotesColors.indexOf(Color(widget.note.color));
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kNotesColors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  colorSelected = index;
                  widget.note.color = kNotesColors[index].toARGB32();
                  BlocProvider.of<NotesCubit>(context).fetchNotes();
                });
              },
              child: ColorItem(
                color: kNotesColors[index],
                isActive: colorSelected == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
