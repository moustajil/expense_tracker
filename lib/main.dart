import 'package:expens_tracker/expances.dart';
import 'package:flutter/material.dart';


var kDarkColor = const Color.fromARGB(255, 71, 57, 57);
void main() {
  runApp(MaterialApp(
    darkTheme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: kDarkColor,
      appBarTheme: AppBarTheme(
        backgroundColor: kDarkColor,
        foregroundColor: Colors.white,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: kDarkColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
      textTheme: ThemeData().textTheme.copyWith(
        titleLarge: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        bodyMedium: const TextStyle(fontSize: 16, color: Color.fromARGB(135, 255, 255, 255)),
      ),
    ),
    theme: ThemeData().copyWith(useMaterial3: true,scaffoldBackgroundColor: Colors.white, appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    ),elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    ),textTheme: ThemeData().textTheme.copyWith(
      titleLarge: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 0, 0)),
      bodyMedium: const TextStyle(fontSize: 16, color: Color.fromARGB(135, 0, 0, 0)),
    ),),
    debugShowCheckedModeBanner: false,
    title: 'Expenses Tracker',
    home: ExpensesScreen(),
  ));
}

