import 'package:flutter/material.dart';
import 'package:nexcoin/shared/theme.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) => SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(largeRadius),
            gradient: const RadialGradient(
              center: Alignment(1, -1),
              radius: 1.2,
              colors: <Color>[Color(0xff331c64), Color(0xff5e35b5)],
              stops: <double>[0.2, 1],
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: mediumMargin),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: mediumMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const SizedBox(width: 4),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 22,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset(
                        'assets/memoji.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'John Doe',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Theme.of(context).colorScheme.onPrimary),
                      ),
                      Text(
                        'johndoe@gmail.com',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.7)),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Badge(child: Icon(PhosphorIconsRegular.bell)),
                    padding: const EdgeInsets.all(10),
                    color: Colors.white,
                    style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color(0xff584886))),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'Main Wallet',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.7)),
              ),
              Text(
                '\$ 42,329,00',
                style:
                    Theme.of(context).textTheme.displaySmall!.copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
              const SizedBox(height: 8),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProfileCardActionItem(label: 'Send', icon: PhosphorIconsRegular.arrowUp),
                    ProfileCardActionItem(label: 'Receive', icon: PhosphorIconsRegular.arrowDown),
                    ProfileCardActionItem(label: 'Buy', icon: PhosphorIconsRegular.creditCard),
                    ProfileCardActionItem(label: 'Sell', icon: PhosphorIconsRegular.storefront),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}

class ProfileCardActionItem extends StatelessWidget {
  const ProfileCardActionItem({super.key, required this.label, required this.icon});

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(icon),
            padding: const EdgeInsets.all(12),
            color: Colors.white,
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Color(0xff7255b1)),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
          ),
        ],
      );
}
