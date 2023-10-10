import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String titleText;
  final String subText;
  final String imagePath;
  final Widget Icon;

  const MyListTile({
    super.key,
    required this.titleText,
    required this.subText,
    required this.imagePath,
    required this.Icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        titleText,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      subtitle: Text(subText),
      leading: Image.network(imagePath),
      trailing: Icon,
    );
  }
}
