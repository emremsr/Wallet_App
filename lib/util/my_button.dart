import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final ImagePath;
  final String ImageText;

  const MyButton({
    super.key,
    required this.ImagePath,
    required this.ImageText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 40,
                    spreadRadius: 10)
              ]),
          child: Image.network(ImagePath),
        ),
        SizedBox(height: 10),
        Text(
          ImageText,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
