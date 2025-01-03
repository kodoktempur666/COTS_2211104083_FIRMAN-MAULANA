import 'package:flutter/material.dart';
import 'font_family.dart';
import '../colors/primary_colors.dart';

class TextStyles {
  // Heading Styles
  static const TextStyle heading1 = TextStyle(
    fontFamily: FontFamily.sfProHeavy,
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: PrimaryColors.textSecondary,
  );

  static const TextStyle heading2 = TextStyle(
    fontFamily: FontFamily.sfProHeavy,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 0, 0, 0),
  );

  static const TextStyle heading3 = TextStyle(
    fontFamily: FontFamily.sfProLight,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: PrimaryColors.textPrimary,
  );

  // Body Styles
  static const TextStyle body1 = TextStyle(
    fontFamily: FontFamily.sfProLight,
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: PrimaryColors.secondary,
  );

  static const TextStyle body2 = TextStyle(
    fontFamily: FontFamily.sfProLight,
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: Color.fromARGB(255, 0, 0, 0),
  );

  // Caption Styles
  static const TextStyle caption = TextStyle(
    fontFamily: FontFamily.sfProLight,
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: PrimaryColors.textSecondary,
  );

  // Button Text Style
  static const TextStyle button = TextStyle(
    fontFamily: FontFamily.sfProLight,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white, 
  );

  // Customizable Error Text
  static const TextStyle error = TextStyle(
    fontFamily: FontFamily.sfProLight,
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.red,
  );
}
