import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../shared/app_router.gr.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<StatefulWidget> createState() => BottomNavigationState();
}

class BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) => NavigationBar(
        indicatorColor: Theme.of(context).scaffoldBackgroundColor,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        selectedIndex: currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });

          context.router.replace(switch (index) {
            0 => const HomeRoute(),
            1 => const SwapRoute(),
            3 => const HistoryRoute(),
            _ => throw Exception('Unknown route'),
          });
        },
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
      );
}
