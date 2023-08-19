import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../config/constant.dart';

class CustomAppBar extends StatelessWidget {
  final String? title;
  final bool backArrow;
  const CustomAppBar({Key? key, required this.title, this.backArrow = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return SafeArea(
      child: Container(
        height: 60,
        color: Color(0x75ffffff),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppBar(
              automaticallyImplyLeading: backArrow,
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text(title!,
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                      fontWeight: Constant.fontWeight500,
                      fontSize: Constant.fontSize16)),
              iconTheme: IconThemeData(color: Colors.black),
              actions: [
                IconButton(
                  icon: const Icon(Icons.favorite),
                  onPressed: () {
                    Navigator.pushNamed(context, '/wishlist');
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(120.0);
}
