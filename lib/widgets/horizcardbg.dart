import 'package:flutter/material.dart';

class HorizCardBg extends StatelessWidget {
  const HorizCardBg({super.key, required this.img, required this.title});

  final String img, title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 120,
      margin: EdgeInsets.only(right: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
      ),
      child: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
      ),
    );
  }
}