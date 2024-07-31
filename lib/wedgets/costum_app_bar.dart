import 'package:flutter/material.dart';

class CostumAppBar extends StatelessWidget {
  const CostumAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        flexibleSpace: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
        ),
        Text(
          'Hello,',
          style: TextStyle(
            fontSize: 28.0,
          ),
        ),
        Text(
          'My Notes',
          style: TextStyle(
            fontSize: 28.0,
          ),
        ),
      ],
    ));
  }
}
