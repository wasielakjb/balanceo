import 'package:auto_route/auto_route.dart';
import 'package:balanceo/app/router/app_router.gr.dart';

abstract class ProfileRoutes {
  static List<AutoRoute> routes = [
    CustomRoute<void>(
      path: '/profile',
      page: ProfileRoute.page,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
  ];
}
