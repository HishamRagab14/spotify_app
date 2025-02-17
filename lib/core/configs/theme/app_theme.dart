import 'package:flutter/material.dart';
import 'package:spotify_app/core/configs/theme/app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    fontFamily: 'Satoshi',
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.lightBackground,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
        textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(
        color: Color(0xFF383838),
        fontWeight: FontWeight.w500,
      ),
      filled: true,
      fillColor: Colors.transparent,
      contentPadding: EdgeInsets.all(30),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
          color: Colors.black,
          width: 0.4,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
          color: Colors.white,
          width: 0.4,
        ),
      ),
      focusedBorder:OutlineInputBorder(
        
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
          color: AppColors.primaryColor,
          width: 1,
        ),
      ), 
    ),
  );
  static final darkTheme = ThemeData(
    fontFamily: 'Satoshi',
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.darkBackground,
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(
        color: Color(0xFFA7A7A7),
        fontWeight: FontWeight.w500,
      ),
      filled: true,
      fillColor: Colors.transparent,
      contentPadding: EdgeInsets.all(30),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
          color: Colors.white,
          width: 0.4,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
          color: Colors.white,
          width: 0.4,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: AppColors.primaryColor,
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          )),
    ),
  );
}
