import 'package:flutter/material.dart';

class BorderBottom extends StatelessWidget {
  const BorderBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color(0x44A1A1A1), width: 0.8),
        ),
      ),
    );
  }
}
