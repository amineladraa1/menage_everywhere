import 'package:flutter/material.dart';

class titlesText extends StatelessWidget {
  const titlesText({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.w700,
        fontSize: 20.0,
      ),
    );
  }
}
