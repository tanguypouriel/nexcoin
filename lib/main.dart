import 'package:flutter/material.dart';

import 'feature/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NexCoin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff9168e8),
        ),
        scaffoldBackgroundColor: const Color(0xff0b0b0d),
      ),
      home: const HomeScreen(),
    );
  }
}
