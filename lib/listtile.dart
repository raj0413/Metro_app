import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;

  const CustomListTile({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 8, // Adjust width as needed
        color: Colors.blue,
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      dense: true, // Adjust spacing as needed
    );
  }
}
