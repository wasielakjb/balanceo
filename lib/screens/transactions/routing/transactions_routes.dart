import 'package:auto_route/auto_route.dart';
import 'package:balanceo/app/router/app_router.gr.dart';

abstract class TransactionsRoutes {
  static List<AutoRoute> routes = [
    CustomRoute<void>(
      path: '/transactions',
      page: TransactionsRoute.page,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
  ];
}
