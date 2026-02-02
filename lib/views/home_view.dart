import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/home_view_body.dart';
import 'package:notes_app/views/widgets/modal_bottom_sheet.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return ModalBottomSheet();
          },
        ),
        child: Icon(Icons.add),
      ),
    );
  }
}
