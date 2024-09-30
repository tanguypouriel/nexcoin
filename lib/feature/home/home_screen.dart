
import 'package:flutter/material.dart';
import 'package:nexcoin/feature/home/widgets/assets_card.dart';
import 'package:nexcoin/feature/home/widgets/profile_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
    child: Scaffold(
      body: Column(
        children: [
          ProfileCard(),
          const SizedBox(height: 16),
          Expanded(child: AssetsCard()),
        ],
      ),
    ),
  );

}