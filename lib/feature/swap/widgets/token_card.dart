import 'package:flutter/material.dart';
import 'package:nexcoin/shared/theme.dart';

import '../../../model/token.dart';

class TokenCard extends StatelessWidget {
  const TokenCard({
    super.key,
    required this.token,
    required this.send,
    required this.amount,
  });

  final Token token;
  final bool send;
  final String amount;

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(color: colorTheme.cardBackground, borderRadius: BorderRadius.circular(largeRadius)),
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  send ? 'Send' : 'Receive',
                  style:
                      Theme.of(context).textTheme.bodyMedium!.copyWith(color: Theme.of(context).colorScheme.onSurface),
                ),
                const Spacer(),
                Text(
                  'Amount',
                  style:
                      Theme.of(context).textTheme.bodyMedium!.copyWith(color: Theme.of(context).colorScheme.onSurface),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: send ? Theme.of(context).colorScheme.primary : const Color(0xfff7931b),
                  radius: 26,
                  child: Icon(
                    token.icon,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  token.codeName,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                const SizedBox(width: 4),
                const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.grey,
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      amount,
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Balance: 25,724',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Theme.of(context).colorScheme.onSurface),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
}
