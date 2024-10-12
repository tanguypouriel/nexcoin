import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nexcoin/feature/home/widgets/assets_card.dart';
import 'package:nexcoin/feature/home/widgets/profile_card.dart';
import 'package:nexcoin/feature/shared/bottom_navigation.dart';
import 'package:nexcoin/shared/app_router.gr.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => const SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              ProfileCard(),
              SizedBox(height: 8),
              Expanded(child: AssetsCard()),
            ],
          ),
          bottomNavigationBar: BottomNavigation(),
        ),
      );
}
