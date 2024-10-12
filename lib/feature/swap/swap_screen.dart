import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:nexcoin/feature/shared/bottom_navigation.dart';
import 'package:nexcoin/feature/swap/widgets/token_card.dart';

import '../../shared/theme.dart';

@RoutePage()
class SwapScreen extends StatelessWidget {
  const SwapScreen({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Swap'),
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.white,
            automaticallyImplyLeading: false,
          ),
          body: Column(
            children: [
              const SizedBox(height: 24),
              const TokenCard(),
              const SizedBox(height: 8),
              const TokenCard(),
              const SizedBox(height: 24),
              FilledButton(
                onPressed: () {},
                child: const Text('Exchange'),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rate',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                    ),
                    Text(
                      '1 ETH = 0.04115 BTC',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Estimated Fee',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                    ),
                    Text(
                      '4.50 USD',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'You will receive',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                    ),
                    Text(
                      '16.750 USD',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: const BottomNavigation(),
        ),
      );
}
