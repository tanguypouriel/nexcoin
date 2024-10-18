import 'package:flutter/material.dart';
import 'package:cryptofont/cryptofont.dart';
import 'package:nexcoin/model/asset_stat.dart';
import 'package:nexcoin/model/token.dart';
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
        padding: const EdgeInsets.only(top: 8, left: mediumMargin, right: mediumMargin),
        margin: const EdgeInsets.symmetric(horizontal: mediumMargin),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(largeRadius),
            topRight: Radius.circular(largeRadius),
          ),
          color: colorTheme.cardBackground,
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

  static List<({Token token, AssetStat assetStat})> allData = [
    (
      token: Token(name: 'Bitcoin', codeName: 'BTC', icon: CryptoFontIcons.btc),
      assetStat: AssetStat(rawValue: '\$63,618.14', lastWeekGain: '+\$0.15', lastWeekGainPercentage: 0.08),
    ),
    (
      token: Token(name: 'Ethereum', codeName: 'ETH', icon: CryptoFontIcons.eth),
      assetStat: AssetStat(rawValue: '\$2,651.18', lastWeekGain: '-\$102.01', lastWeekGainPercentage: -0.06),
    ),
    (
      token: Token(name: 'Tether', codeName: 'USDT', icon: CryptoFontIcons.usdt),
      assetStat: AssetStat(rawValue: '\$1.0', lastWeekGain: '+\$0.99', lastWeekGainPercentage: 0.99),
    ),
    (
      token: Token(name: 'Tron', codeName: 'TRX', icon: CryptoFontIcons.trx),
      assetStat: AssetStat(rawValue: '\$7.244', lastWeekGain: '+\$0.15', lastWeekGainPercentage: 0.18),
    ),
    (
      token: Token(name: 'Polygon', codeName: 'MATIC', icon: CryptoFontIcons.matic),
      assetStat: AssetStat(rawValue: '\$1,250.02', lastWeekGain: '-\$1.20', lastWeekGainPercentage: -0.01),
    ),
    (
    token: Token(name: 'Aave', codeName: 'AAVE', icon: CryptoFontIcons.aave),
    assetStat: AssetStat(rawValue: '\$2,651.18', lastWeekGain: '-\$102.01', lastWeekGainPercentage: -0.06),
    ),
  ];

  @override
  Widget build(BuildContext context) => ListView.separated(
        itemCount: allData.length,
        itemBuilder: (context, index) {
          final item = allData[index];

          return ListTile(
            leading: Container(
              decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xff333335)),
              padding: const EdgeInsets.all(12),
              child: Icon(
                item.token.icon,
                color: Colors.white,
              ),
            ),
            title: Text(
              item.token.name,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15),
            ),
            subtitle: Text(
              item.token.codeName,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.white, fontWeight: FontWeight.w400),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  item.assetStat.rawValue,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 3),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      item.assetStat.lastWeekGain,
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 10),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '${item.assetStat.lastWeekGainPercentage}%',
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(color: item.assetStat.lastWeekGainPercentage >= 0 ? Colors.green : Colors.red, fontWeight: FontWeight.w600, fontSize: 11),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
          indent: 8,
          endIndent: 8,
          thickness: 1.5,
          height: 6,
          color: Color(0xff333335),
        ),
      );
}
