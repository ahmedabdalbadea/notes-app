import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.date,
    required this.color,
  }) : super(key: key);
  final String title, subTitle, date;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: color,
            ),
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    title,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      subTitle,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black.withValues(alpha: 0.5),
                      ),
                    ),
                  ),
                  trailing: Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 28,
                  ),
                ),
                Align(
                  alignment: AlignmentGeometry.centerRight,
                  child: Text(
                    date,
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
