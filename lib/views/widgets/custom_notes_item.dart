import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNotesItem extends StatelessWidget {
  const CustomNotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFFCD7A),
        borderRadius: BorderRadius.circular(18),
      ),
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(0),
            title: Text(
              "Flutter tips",
              style: TextStyle(fontSize: 28, color: Colors.black),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: Text(
                "Build Your Career with Thrawat Samy",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withValues(alpha: 0.5),
                ),
              ),
            ),
            trailing: IconButton(
              padding: EdgeInsets.only(bottom: 50),
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.trash, color: Colors.black, size: 28),
            ),
          ),
          Align(
            alignment: AlignmentGeometry.centerRight,
            child: Text(
              "May 21,2022",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black.withValues(alpha: 0.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
