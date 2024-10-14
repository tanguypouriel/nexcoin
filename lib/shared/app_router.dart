import 'package:auto_route/auto_route.dart';
import 'package:nexcoin/shared/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: SwapRoute.page),
        AutoRoute(page: HistoryRoute.page),
      ];
}
