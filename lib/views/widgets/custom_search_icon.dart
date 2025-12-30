import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  @override
  final IconData icon;

  const CustomSearchIcon({super.key, required this.icon});
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(18),
      ),
      child: IconButton(onPressed: () {}, icon: Icon(icon, size: 28)),
    );
  }
}
