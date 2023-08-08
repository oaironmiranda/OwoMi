import 'package:bank_project/infra/infra.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fonts {
  static final normalFont = GoogleFonts.montserratAlternates(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: Colors.black,
      height: 1);

  static final normalFontW400 = GoogleFonts.montserratAlternates(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: Colors.black,
      height: 1);

  static final h3W400 = GoogleFonts.montserratAlternates(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: Colors.white,
      height: 1);

  static final h4W700 = GoogleFonts.montserratAlternates(
      fontSize: 15,
      fontWeight: FontWeight.w700,
      color: Colors.white,
      height: 1);

  static final h1 = GoogleFonts.montserratAlternates(
    fontSize: 25,
    fontWeight: FontWeight.w400,
    color: Colors.black,
    height: 1,
  );

  static final h2 = GoogleFonts.montserratAlternates(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: Colors.black,
    height: 1,
  );

  static final buttonDefaultFont = GoogleFonts.montserratAlternates(
      fontSize: 15, fontWeight: FontWeight.w700, color: Colors.white);

  static final coloredTextButtonFont = GoogleFonts.montserratAlternates(
    fontSize: 10,
    fontWeight: FontWeight.w700,
    color: const Color(0xffbd00ff),
    height: 1,
  );

  static final textButtonFont = GoogleFonts.montserratAlternates(
    fontSize: 10,
    fontWeight: FontWeight.w700,
    color: Colors.black,
    height: 1,
  );

  static final incomeItemFont = GoogleFonts.montserratAlternates(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: DefaultColors.greenIncome,
    height: 1,
  );

  static final expensesItemFont = GoogleFonts.montserratAlternates(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: DefaultColors.redExpenses,
    height: 1,
  );
}
