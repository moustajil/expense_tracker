import 'package:expens_tracker/expances.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
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

