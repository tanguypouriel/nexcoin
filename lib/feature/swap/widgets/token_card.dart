import 'package:flutter/material.dart';
import 'package:nexcoin/shared/theme.dart';
import 'package:cryptofont/cryptofont.dart';

class TokenCard extends StatelessWidget {
  const TokenCard({super.key});

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(color: colorTheme.cardBackground, borderRadius: BorderRadius.circular(largeRadius)),
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Send',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Theme.of(context).colorScheme.onSurface),
                ),
                const Spacer(),
                Text(
                  'Amount',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Theme.of(context).colorScheme.onSurface),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  radius: 26,
                  child: const Icon(
                    CryptoFontIcons.eth,
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '1.246',
                      style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Balance: 25,724',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Theme.of(context).colorScheme.onSurface),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
}
