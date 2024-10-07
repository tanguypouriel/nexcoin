import 'package:flutter/material.dart';
import 'package:nexcoin/feature/home/widgets/assets_card.dart';
import 'package:nexcoin/feature/home/widgets/profile_card.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: const Column(
            children: [
              ProfileCard(),
              SizedBox(height: 8),
              Expanded(child: AssetsCard()),
            ],
          ),
          bottomNavigationBar: NavigationBar(
            indicatorColor: Theme.of(context).scaffoldBackgroundColor,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            selectedIndex: 0,
            destinations: [
              const NavigationDestination(
                icon: Icon(PhosphorIconsRegular.storefront),
                label: 'Home',
              ),
              const NavigationDestination(
                icon: Icon(PhosphorIconsRegular.arrowsLeftRight),
                label: 'Swap',
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).colorScheme.primary,
                ),
                padding: const EdgeInsets.all(10),
                child: const Icon(
                  PhosphorIconsRegular.scan,
                  color: Colors.white,
                  size: 36,
                ),
              ),
              const NavigationDestination(icon: Icon(Icons.history), label: 'History'),
              const NavigationDestination(icon: Icon(PhosphorIconsRegular.user), label: 'Profile'),
            ],
          ),
        ),
      );
}
