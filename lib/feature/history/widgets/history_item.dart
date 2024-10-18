import 'package:flutter/material.dart';
import 'package:nexcoin/shared/theme.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';


class HistoryTransactionItemData {
  final double value;
  final String currency;

  HistoryTransactionItemData({required this.value, required this.currency});
}

class HistoryItem extends StatelessWidget {
  const HistoryItem({super.key, required this.itemsData, required this.date});

  final String date;
  final List<HistoryTransactionItemData> itemsData;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              date,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
          ),
          const SizedBox(height: 8),
          ...itemsData.map((itemData) => HistoryTransactionItem(data: itemData)),
          const SizedBox(height: 16),
        ],
      );
}

class HistoryTransactionItem extends StatelessWidget {
  const HistoryTransactionItem({super.key, required this.data});

  final HistoryTransactionItemData data;

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
              '${data.value} ${data.currency}',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(color: data.value >= 0 ? Colors.green : Colors.white),
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
