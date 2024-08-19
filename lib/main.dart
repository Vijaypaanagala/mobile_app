import 'package:flutter/material.dart';
import './pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
           backgroundColor: Colors.grey[900], 
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
           )
      ),
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      home: const Home(), 
    );
  }
}
