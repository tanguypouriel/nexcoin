import 'package:flutter/material.dart';
import 'package:nexcoin/feature/home/widgets/assets_card.dart';
import 'package:nexcoin/feature/home/widgets/profile_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: Column(
            children: const [
              ProfileCard(),
              SizedBox(height: 16),
              Expanded(child: AssetsCard()),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.compare_arrows),
                label: 'Swap',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.qr_code_scanner_sharp),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'History'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile'
              ),
            ],
          ),
        ),
      );
}
