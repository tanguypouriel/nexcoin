import 'package:flutter/material.dart';
import 'package:nexcoin/shared/theme.dart';

class AssetsCard extends StatefulWidget {
  const AssetsCard({super.key});

  @override
  State<StatefulWidget> createState() => AssetsCardState();
}

class AssetsCardState extends State<AssetsCard> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: mediumMargin),
        margin: const EdgeInsets.symmetric(horizontal: mediumMargin),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(largeRadius),
            topRight: Radius.circular(largeRadius),
          ),
          color: Color(0xff222224),
        ),
        child: Column(
          children: [
            TabBar(
              controller: _tabController,
              dividerHeight: 0,
              indicatorColor: const Color(0xff7541e1),
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.white,
              tabs: [
                const Tab(text: 'Crypto'),
                const Tab(text: 'NFTs'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  const CryptoTabBarItem(),
                  ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) => const ListTile(
                      leading: Icon(Icons.currency_bitcoin),
                      title: Text('NFTs'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}

class CryptoTabBarItem extends StatelessWidget {
  const CryptoTabBarItem({super.key});

  @override
  Widget build(BuildContext context) => ListView.separated(
        itemCount: 16,
        itemBuilder: (context, index) => ListTile(
          leading: Container(
            decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xff333335)),
            padding: const EdgeInsets.all(8),
            child: const Icon(
              Icons.currency_bitcoin,
              color: Colors.white,
            ),
          ),
          title: Text(
            'Bitcoin',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            'BTC',
            style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.white, fontWeight: FontWeight.w400),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '\$63,618.14',
                style:
                    Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 3),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '+\$0.15',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 10),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '+0.8%',
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(color: Colors.green, fontWeight: FontWeight.w600, fontSize: 11),
                  ),
                ],
              ),
            ],
          ),
        ),
        separatorBuilder: (BuildContext context, int index) => const Divider(
          indent: 8,
          endIndent: 8,
          thickness: 1.5,
          height: 6,
          color: Color(0xff333335),
        ),
      );
}
