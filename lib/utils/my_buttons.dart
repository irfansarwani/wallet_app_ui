import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  const MyButtons(
      {super.key,
      required this.myCardButtonText,
      required this.myCardIconPath});

  final String myCardIconPath;
  final String myCardButtonText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 10,
                  spreadRadius: 2,
                )
              ]),
          child: Image.asset(myCardIconPath),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          myCardButtonText,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
