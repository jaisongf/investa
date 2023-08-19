import 'package:flutter/material.dart';

import '../config/constant.dart';

class CategoryHeading extends StatelessWidget {
  const CategoryHeading({required this.data});
  final List<Map<String, String>> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        shrinkWrap: true,
        scrollDirection:
            Axis.horizontal, // Set the scroll direction to horizontal
        children: List.generate(data.length, (index) {
          return Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Top Image
                    Image.asset(
                      data[index]['imagePath']!,
                      height: 45.0,
                      width: 45.0,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      data[index]['text']!,
                      style: TextStyle(
                          color: Constant.fontColorGlobal,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
