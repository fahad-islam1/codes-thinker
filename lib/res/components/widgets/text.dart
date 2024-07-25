import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget commonText({
  String? title,
  double size = 16.0,
  FontWeight? fontweight,
  Color color = Colors.white,
}) {
  return Text(
    title!,
    textAlign: TextAlign.justify,
    style: GoogleFonts.poppins(
      textStyle: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontweight,
      ),
    ),
  );
}
