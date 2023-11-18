import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'theme.g.dart';

const Color kYellowColor = Color(0xffFEDE65);
const Color kRedColor = Color(0xffFF7051);

@riverpod
class ThemeController extends _$ThemeController {
  @override
  ThemeData build() {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: Border(bottom: BorderSide(color: Colors.black, width: 1)),
      ),
      scaffoldBackgroundColor: kYellowColor,
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: Colors.black,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.black),
          shadowColor: MaterialStateProperty.all(Colors.black),
          backgroundColor: MaterialStateProperty.all(kRedColor),
          textStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w800,
            ),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(200),
              side: const BorderSide(color: Colors.black, width: 1),
            ),
          ),
          padding: MaterialStateProperty.all(
              const EdgeInsets.fromLTRB(14, 10, 16, 10)),
        ),
      ),
      textTheme: const TextTheme(
        bodyMedium: TextStyle(fontSize: 16),
        titleMedium: TextStyle(fontSize: 19, fontWeight: FontWeight.w800),
      ),
      drawerTheme: const DrawerThemeData(
        elevation: 0,
        shape: Border(right: BorderSide(color: Colors.black, width: 1)),
      ),
    );
  }
}
