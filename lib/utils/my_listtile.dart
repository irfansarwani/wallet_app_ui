import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  const MyListTile(
      {super.key,
      required this.tileIconPath,
      required this.tileSubTitle,
      required this.tileTitle,
      required this.containerColor,
      required this.iconColor});

  final String tileIconPath;
  final String tileTitle;
  final String tileSubTitle;
  final dynamic containerColor;
  final dynamic iconColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: containerColor,
                ),
                child: Image.asset(
                  color: iconColor,
                  tileIconPath,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tileTitle,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(tileSubTitle),
                    ],
                  )
                ],
              ),
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios_outlined,
          ),
        ],
      ),
    );
  }
}
