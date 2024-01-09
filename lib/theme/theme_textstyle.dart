import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeText {
  TextStyle robotoBold = GoogleFonts.roboto(
      fontSize: 36,
      fontWeight: FontWeight.w700,
      color: ThemeColor().neutral900);

  TextStyle robotoMedium = GoogleFonts.roboto(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: ThemeColor().neutral900);

  TextStyle robotoRegular =
      GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.w400);

  TextStyle robotoSmall =
      GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w400);

  TextStyle robotoSmallBold =
      GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w700);
}
