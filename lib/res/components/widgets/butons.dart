import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:codes_thinkers/res/components/widgets/text.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double fontSize;
  final double elevation;
  final double borderRadius;
  final EdgeInsets padding;
  final double width;
  final double height;

  const CommonButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.backgroundColor = Colors.blue,
    this.textColor = Colors.white,
    this.fontSize = 16,
    this.elevation = 4,
    this.borderRadius = 8,
    this.padding = const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
    this.width = double.infinity, // Default to full width
    this.height = 48, // Default height
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          elevation: elevation,
        ),
        child: commonText(
          title: text,
          fontweight: FontWeight.normal,
          size: fontSize,
        ),
      ),
    );
  }
}
