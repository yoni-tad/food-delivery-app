import 'package:flutter/material.dart';

class foodCategory extends StatelessWidget {
  final bool isActive;
  final String title;

  const foodCategory({
    super.key,
    required this.isActive,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: isActive ? 3 : 2.5 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: isActive ? Colors.yellow[700] : Colors.white,
        ),
        child: Align(
          child: Text(
            title,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.grey[500],
              fontSize: 18,
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
