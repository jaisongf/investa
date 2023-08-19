import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String? buttonName;
  final double? buttonNameSize;
  final Color? buttonNameColor;
  final Color? buttonColor;
  final double? buttonHeight;
  final double? buttonRadiusTL;
  final double? buttonRadiusBL;
  final Color? buttonBorder;
  final Function? buttonFunction;
  final FontWeight? buttonNameWeight;
  const CommonButton(
      {Key? key,
      this.buttonName,
      this.buttonColor,
      this.buttonHeight,
      this.buttonRadiusTL,
      this.buttonRadiusBL,
      this.buttonNameColor,
      this.buttonNameSize,
      this.buttonBorder,
      this.buttonFunction,
      this.buttonNameWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      height: buttonHeight,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: buttonBorder!),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(buttonRadiusTL!),
              topRight: Radius.circular(buttonRadiusBL!),
              bottomLeft: Radius.circular(buttonRadiusBL!),
              bottomRight: Radius.circular(buttonRadiusTL!))),
      onPressed: () {
        if (buttonFunction != null) {
          buttonFunction!();
        }
      },
      child: Text(
        buttonName!,
        style: TextStyle(
            fontSize: buttonNameSize,
            color: buttonNameColor,
            fontWeight: buttonNameWeight),
      ),
      color: buttonColor,
    );
  }
}
