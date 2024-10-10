import 'package:flutter/material.dart';
import 'package:islame_project_session_6/Core/colors_manager.dart';

class My_Theme {
  static ThemeData Light_theme = ThemeData(
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.w700, color: Colors.black, fontSize: 30),
          iconTheme: IconThemeData(color: Colors.transparent)),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: colorsManger.gold_color,
          showUnselectedLabels: false,
          showSelectedLabels: true,
          elevation: 20,
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(
            size: 60,
          ),
          unselectedIconTheme: IconThemeData(
            size: 40,
          )),
      dividerColor: colorsManger.gold_color,
      cardTheme: CardTheme(
        margin: EdgeInsets.symmetric(vertical: 12, horizontal: 6),
        color: Color(0xFFB7935F).withOpacity(0.5),
        elevation: 14,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      textTheme: const TextTheme(
          headlineMedium: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w500,
              color: Color(0xFF242424)),
          titleMedium: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w400,
              color: Color(0xFF242424)),
          bodyMedium: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Color(0xFF242424))));
}
