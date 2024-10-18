import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:nexcoin/feature/history/widgets/history_item.dart';

@RoutePage()
class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('History'),
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.white,
            automaticallyImplyLeading: false,
          ),
          body: Column(
            children: [
              const SizedBox(height: 16),
              HistoryItem(
                date: 'Sep 7 2024',
                itemsData: [
                  HistoryTransactionItemData(value: -589932.14, currency: 'USDT'),
                  HistoryTransactionItemData(value: 45.5, currency: 'TRX'),
                ],
              ),
              HistoryItem(
                date: 'May 3 2024',
                itemsData: [
                  HistoryTransactionItemData(value: 4057842, currency: 'USDT'),
                ],
              ),
              HistoryItem(
                date: 'Feb 27 2024',
                itemsData: [
                  HistoryTransactionItemData(value: -15712, currency: 'USDT'),
                  HistoryTransactionItemData(value: 18202, currency: 'USDT'),
                ],
              ),
            ],
          ),
        ),
      );
}
