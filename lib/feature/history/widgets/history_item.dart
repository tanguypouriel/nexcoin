import 'package:flutter/material.dart';
import 'package:nexcoin/shared/theme.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Sep 7 2024',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
          ),
          const SizedBox(height: 8),
          const HistoryTransactionItem(),
          const HistoryTransactionItem(),
          const SizedBox(height: 16),
        ],
      );
}

class HistoryTransactionItem extends StatelessWidget {
  const HistoryTransactionItem({super.key});

  @override
  Widget build(BuildContext context) => ListTile(
        leading: CircleAvatar(
          backgroundColor: colorTheme.cardBackground,
          foregroundColor: Colors.white,
          radius: 26,
          child: Icon(PhosphorIcons.arrowUp()),
        ),
        title: Text(
          'Transfer',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),
        ),
        subtitle: Text(
          'To: YY56gfg....GGskl113',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Theme.of(context).colorScheme.onSurface),
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '-589,932.14 USDT',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 8),
            Text(
              '20.57',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
          ],
        ),
      );
}
