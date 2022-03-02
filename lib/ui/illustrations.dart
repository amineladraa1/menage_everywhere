import 'package:flutter/material.dart';

class Illustration extends StatelessWidget {
  const Illustration({Key? key, required this.name, required this.img})
      : super(key: key);

  final String name;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/$img.jpg'),
              colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.04),
                BlendMode.srcOver,
              ),
              fit: BoxFit.cover),
        ),
        height: 160,
        width: 160,
        child: Align(
          alignment: Alignment.centerLeft,
          child: RichText(
            text: TextSpan(
                text: '  $name',
                style: TextStyle(
                  fontSize: 16.5,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                      text: '\n  Time',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 16.5,
                        fontWeight: FontWeight.w700,
                      ))
                ]),
          ),
        ),
      ),
      Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () {},
          child: Container(
            color: Colors.transparent,
            height: 160,
            width: 160,
          ),
        ),
      ),
    ]);
  }
}
