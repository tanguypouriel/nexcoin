import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:nexcoin/feature/history/widgets/history_item.dart';

import '../shared/bottom_navigation.dart';

@RoutePage()
class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('History'),
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.white,
            automaticallyImplyLeading: false,
          ),
          body: const Column(
            children: [
              SizedBox(height: 16),
              HistoryItem(),
              HistoryItem(),
              HistoryItem(),
            ],
          ),
          bottomNavigationBar: const BottomNavigation(),
        ),
      );
}
