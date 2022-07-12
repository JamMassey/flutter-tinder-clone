import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontFamily {
  
  static const FontWeight black = FontWeight.w900;
  static const FontWeight extraBold = FontWeight.w800;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight light = FontWeight.w300;
  static const FontWeight extraLight = FontWeight.w200;
  static const FontWeight thin = FontWeight.w100;

  static final TextTheme textTheme = TextTheme(
    headline4: GoogleFonts.montserrat(fontWeight: bold, fontSize: 20.0),
    headline5: GoogleFonts.oswald(fontWeight: medium, fontSize: 16.0),
    headline6: GoogleFonts.montserrat(fontWeight: bold, fontSize: 16.0),
    subtitle1: GoogleFonts.montserrat(fontWeight: medium, fontSize: 16.0),
    subtitle2: GoogleFonts.montserrat(fontWeight: medium, fontSize: 14.0),
    bodyText1: GoogleFonts.montserrat(fontWeight: regular, fontSize: 14.0),
    bodyText2: GoogleFonts.montserrat(fontWeight: regular, fontSize: 16.0),
    caption: GoogleFonts.oswald(fontWeight: semiBold, fontSize: 16.0),
    overline: GoogleFonts.montserrat(fontWeight: medium, fontSize: 12.0),
    button: GoogleFonts.montserrat(fontWeight: semiBold, fontSize: 14.0),
  );
}