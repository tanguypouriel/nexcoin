import 'package:flutter/material.dart';
import 'package:nexcoin/shared/theme.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) => SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Theme.of(context).colorScheme.primary,
          ),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: mediumMargin),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: mediumMargin),
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 36,
                    height: 36,
                    child: ColoredBox(color: Colors.red),
                  ),
                  const Text('John Doe'),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_none),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text('Main Wallet'),
              Text(
                '\$ 42,329,00',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_upward)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_downward)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.credit_card_outlined)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.house_outlined)),
                ],
              ),
            ],
          ),
        ),
      );
}
