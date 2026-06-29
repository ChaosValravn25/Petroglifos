import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const PetroglifosApp());
}

class PetroglifosApp extends StatelessWidget {
  const PetroglifosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Petroglifos Maule',

      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8D6E63),
        ),
        scaffoldBackgroundColor: const Color(0xFFD7C2A3),
      ),

      home: const HomePage(),
    );
  }
}