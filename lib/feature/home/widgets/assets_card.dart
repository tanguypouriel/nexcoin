import 'package:flutter/material.dart';
import 'package:nexcoin/shared/theme.dart';

class AssetsCard extends StatelessWidget {
  const AssetsCard({super.key});

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: mediumMargin),
        margin: const EdgeInsets.symmetric(horizontal: mediumMargin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(largeRadius),
          color: Theme.of(context).colorScheme.outline,
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) => ListTile(
                  leading: Icon(Icons.currency_bitcoin),
                  title: Text('Bitcoin'),
                ),
              ),
            ),
          ],
        ),
      );
}
