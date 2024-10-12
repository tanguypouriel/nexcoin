import 'package:flutter/material.dart';
import 'package:nexcoin/shared/app_router.dart';

import 'feature/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'NexCoin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff9168e8),
        ),
        scaffoldBackgroundColor: const Color(0xff0b0b0d),
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
