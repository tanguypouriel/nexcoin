import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nexcoin/shared/app_router.gr.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) => AutoTabsScaffold(
        routes: const [
          HomeRoute(),
          SwapRoute(),
          ScanRoute(),
          HistoryRoute(),
          ProfileRoute(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) => BottomNavigationBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          unselectedItemColor: const Color(0xff56575b),
          iconSize: 32,
          selectedItemColor: Theme.of(context).colorScheme.primary,
          type: BottomNavigationBarType.fixed,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(PhosphorIconsRegular.storefront),
              label: 'Home',
              backgroundColor: Theme.of(context).colorScheme.surface,
            ),
            const BottomNavigationBarItem(
              icon: Icon(PhosphorIconsRegular.arrowsLeftRight),
              label: 'Swap',
            ),
            BottomNavigationBarItem(
              icon: Container(
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
              label: '',
            ),
            const BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
            const BottomNavigationBarItem(icon: Icon(PhosphorIconsRegular.user), label: 'Profile'),
          ],
        ),
      );
}
