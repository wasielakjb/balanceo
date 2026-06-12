import 'package:auto_route/auto_route.dart';
import 'package:balanceo/screens/home/routing/home_routes.dart';
import 'package:balanceo/screens/profile/routing/profile_routes.dart';
import 'package:balanceo/screens/transactions/routing/transactions_routes.dart';
import 'package:balanceo/screens/wallet/routing/wallet_routes.dart';
import 'package:injectable/injectable.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        ...HomeRoutes.routes,
        ...TransactionsRoutes.routes,
        ...WalletRoutes.routes,
        ...ProfileRoutes.routes,
      ];
}
