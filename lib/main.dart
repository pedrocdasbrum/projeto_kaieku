import 'package:flutter/material.dart';
import 'package:projeto_final_flutter/screens/home/home.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
      title: "Kaieku",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white38,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: Colors.white,
            textStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
