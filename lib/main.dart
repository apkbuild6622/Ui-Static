import 'package:flutter/material.dart';
import 'package:uipractice/home_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
       appBarTheme: AppBarTheme(backgroundColor: Colors.white),
       ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

