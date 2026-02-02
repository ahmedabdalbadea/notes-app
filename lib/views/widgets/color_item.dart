import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({Key? key, required this.color, required this.isActive})
    : super(key: key);
  final Color color;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 30,
      child: CircleAvatar(backgroundColor: color, radius: isActive ? 24 : 30),
    );
  }
}
