import 'package:auto_route/auto_route.dart';
import 'package:balanceo/app/router/app_router.gr.dart';

abstract class WalletRoutes {
  static List<AutoRoute> routes = [
    CustomRoute<void>(
      path: '/wallet',
      page: WalletRoute.page,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
  ];
}
