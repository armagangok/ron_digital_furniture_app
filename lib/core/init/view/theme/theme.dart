import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData.light().copyWith(
  //

  appBarTheme: const AppBarTheme().copyWith(
    color: const Color(0xffffffff).withOpacity(0),
    elevation: 0,
  ),

  //

  iconTheme: const IconThemeData().copyWith(
    color: const Color(0x00000000),
  ),

  //

  bottomNavigationBarTheme: const BottomNavigationBarThemeData().copyWith(
    selectedIconTheme: const IconThemeData().copyWith(
      color: const Color(0xff007AFF),
    ),
    selectedLabelStyle: const TextStyle().copyWith(
      color: const Color(0xff007AFF),
    ),
    showSelectedLabels: false,
  ),

  //

  shadowColor: const Color.fromRGBO(145, 85, 253, 0.50),

  //

  primaryColor: const Color.fromRGBO(145, 85, 253, 1),

  //
  primaryColorDark: const Color.fromRGBO(133, 141, 147, 1),

  //

  backgroundColor: const Color.fromRGBO(244, 245, 250, 1),

  //

  textSelectionTheme: const TextSelectionThemeData(
    selectionColor: Color.fromRGBO(68, 53, 65, 1),
  ),

  //
  dividerColor: const Color.fromRGBO(235, 234, 237, 1),

  //

  primaryColorLight: const Color.fromRGBO(58, 53, 65, 0.68),

  //

  splashColor: const Color.fromRGBO(58, 53, 65, 0.23),

  //

  highlightColor: Colors.white,

  //

  toggleableActiveColor: const Color.fromRGBO(58, 53, 65, 0.87),

  //

  scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 1),

  //

  hoverColor: const Color.fromRGBO(189, 189, 189, 1),

  //

  canvasColor: const Color.fromRGBO(248, 248, 248, 1),

  //

  selectedRowColor: const Color.fromRGBO(255, 180, 0, 1),

  //

  secondaryHeaderColor: const Color.fromRGBO(242, 242, 242, 1),

  //

  focusColor: const Color.fromRGBO(58, 53, 65, 0.38),

  //

  textTheme: const TextTheme(
    headline1: TextStyle(
        fontSize: 96,
        fontWeight: FontWeight.w300,
        color: Color.fromRGBO(68, 53, 65, 1)),
    headline2: TextStyle(
        fontSize: 60,
        fontWeight: FontWeight.w300,
        color: Color.fromRGBO(68, 53, 65, 1)),
    headline3: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.w400,
        color: Color.fromRGBO(68, 53, 65, 1)),
    headline4: TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w400,
        color: Color.fromRGBO(68, 53, 65, 1)),
    headline5: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Color.fromRGBO(68, 53, 65, 1)),
    headline6: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Color.fromRGBO(68, 53, 65, 1)),
    subtitle1: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Color.fromRGBO(68, 53, 65, 1)),
    subtitle2: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color.fromRGBO(68, 53, 65, 1)),
    bodyText1: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(68, 53, 65, 1),
    ),
    bodyText2: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(68, 53, 65, 1),
    ),
    caption: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(68, 53, 65, 1),
    ),
    overline: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(68, 53, 65, 1),
    ),
  ),
);
