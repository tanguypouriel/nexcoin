import 'package:flutter/material.dart';
import 'package:nexcoin/shared/theme.dart';

class TokenCard extends StatelessWidget {
  const TokenCard({super.key});

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(color: colorTheme.cardBackground, borderRadius: BorderRadius.circular(largeRadius)),
        padding: const EdgeInsets.all(24),
        child: SizedBox(
          height: 120,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Send',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                  ),
                  const Spacer(),
                  Text(
                    'Amount',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 100),
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '1.246',
                        style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white),
                      ),
                      Text(
                        'Balance: 25,724',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
