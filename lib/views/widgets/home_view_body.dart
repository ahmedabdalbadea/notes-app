import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/note_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(
            title: "Notes",
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          SizedBox(height: 16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: NoteItem(
                      title: "Flutter Tips",
                      subTitle: "Build Your Career in Flutter with any Acdamey",
                      date: "Jan 31, 2026",
                      color: Colors.amber,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
