import 'package:flutter/material.dart';

class ReuseableTextWidget extends StatelessWidget {
  const ReuseableTextWidget(
      {super.key,
      required this.text,
      this.fontSize,
      this.textAlign,
      this.textColor,
      this.fontWeight,
      this.fontFamily});
  final String text;
  final double? fontSize;
  final Color? textColor;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final TextAlign? textAlign;
 

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize,
          color: textColor,
          fontWeight: fontWeight),
      textAlign: textAlign,
    );
  }
}
