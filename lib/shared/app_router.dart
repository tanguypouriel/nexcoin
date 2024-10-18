import 'package:auto_route/auto_route.dart';
import 'package:nexcoin/shared/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(
          page: MainRoute.page,
          children: [
            AutoRoute(page: HomeRoute.page, initial: true),
            AutoRoute(page: SwapRoute.page),
            AutoRoute(page: ScanRoute.page),
            AutoRoute(page: HistoryRoute.page),
            AutoRoute(page: ProfileRoute.page),
          ],
        ),
      ];
}
