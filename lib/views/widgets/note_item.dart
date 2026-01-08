import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children:  [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text(
              "Flutter Tips",
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Text(
                "Build your career with Tharwat Samy",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withValues(alpha: 0.4),
                ),
              ),
            ),
            trailing: IconButton(
              padding: EdgeInsets.only(bottom: 24),
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.trash, size: 24, color: Colors.black),
            ),
          ),

          Align(
            alignment: AlignmentGeometry.centerRight,
            child: Text(
              "May 21,2022",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black.withValues(alpha: 0.4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
