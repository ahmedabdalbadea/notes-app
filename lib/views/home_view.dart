import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_model_botton_sheet.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddModelBottonSheet();
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


