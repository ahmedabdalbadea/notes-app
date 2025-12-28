import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(18),
      ),
      child: IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 28)),
    );
  }
}
