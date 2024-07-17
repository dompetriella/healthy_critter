import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

const Color mainGreenColor = Color(0xFF6A994E);
const Color mainBlueColor = Color(0xFF2978A0);
const Color mainOrangeColor = Color(0xFFFC8422);
const Color mainRedColor = Color(0xFFBC4749);

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(2))))),
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 96, fontWeight: FontWeight.w300),
    displayMedium: TextStyle(fontSize: 60, fontWeight: FontWeight.w400),
    displaySmall: TextStyle(fontSize: 48, fontWeight: FontWeight.w400),
    headlineMedium: TextStyle(fontSize: 32, fontWeight: FontWeight.w400),
    headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
    titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
    bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
    bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
    labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    labelMedium: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
    labelSmall: TextStyle(fontSize: 8, fontWeight: FontWeight.w200),
  ),
  colorScheme: ColorScheme.light(
      primary: HexColor('#6A994E'),
      primaryFixed: HexColor('#A0CE64'),
      primaryFixedDim: HexColor('#386641'),
      onPrimary: HexColor('#F5F2EB'),
      tertiary: HexColor('#FC8422'),
      tertiaryFixed: HexColor('#FCBF22'),
      tertiaryFixedDim: HexColor('#C86B1F'),
      onTertiary: HexColor('#F5F2EB'),
      surface: HexColor('#F2E8CF'),
      surfaceDim: HexColor('#D4C8A8')
      // primary: Colors.white,
      // onPrimary: HexColor('#1E1E1E'),
      // secondary: HexColor('#AAAAAA').withOpacity(0.25),
      // onSecondary: HexColor('#1E1E1E'),
      // tertiary: HexColor('#239DD8'),
      // onTertiary: Colors.white,
      // surfaceTint: HexColor('#7AB93E'),
      // surfaceVariant: HexColor('#F6A214'),
      // background: HexColor('#EAEAEA'),
      ),
);

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  textTheme: const TextTheme(),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(2))))),
  colorScheme: ColorScheme.dark(
      primary: HexColor('#2978A0'),
      primaryFixed: HexColor('#2DA5B6'),
      primaryFixedDim: HexColor('#164862'),
      onPrimary: HexColor('#1E1E1E'),
      tertiary: HexColor('#FC8422'),
      tertiaryFixed: HexColor('#FCBF22'),
      tertiaryFixedDim: HexColor('#C86B1F'),
      surface: HexColor('#F2E8CF')
      // tertiary: HexColor('#239DD8'),
      // onTertiary: Colors.white,
      // surfaceTint: HexColor('#7AB93E'),
      // surfaceVariant: HexColor('#F6A214'),
      // background: HexColor('#EAEAEA'),
      ),
);
