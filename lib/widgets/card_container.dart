import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String heading;
  final String subheading1;
  final String subheading2;
  final String subheading3;
  final VoidCallback onTap;
  final Color backgroundColor;

  CustomCard({
    required this.heading,
    required this.subheading1,
    required this.subheading2,
    required this.subheading3,
    required this.onTap,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 8.0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF161B56)),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    subheading1,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Color(0xFF161B56),
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    subheading2,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Color(0xFF161B56),
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    subheading3,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Color(0xFF161B56),
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF161B56),
              size: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCardList extends StatelessWidget {
  final List<Map<String, dynamic>> cardData;

  CustomCardList({required this.cardData});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: cardData.length,
        itemBuilder: (context, index) {
          final data = cardData[index];
          final Color backgroundColor = data['backgroundColor'] ?? Colors.blue;
          return CustomCard(
            heading: data['heading']!,
            subheading1: data['subheading1']!,
            subheading2: data['subheading2']!,
            subheading3: data['subheading3']!,
            backgroundColor: backgroundColor,
            onTap: () {
              final String routeName = data['route']!;
              Navigator.pushNamed(context, routeName);
            },
          );
        },
      ),
    );
  }
}
