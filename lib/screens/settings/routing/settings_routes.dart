import 'package:auto_route/auto_route.dart';
import 'package:balanceo/app/router/app_router.gr.dart';

abstract class SettingsRoutes {
  static List<AutoRoute> routes = [
    AutoRoute(
      path: '/settings',
      page: SettingsRoute.page,
    ),
  ];
}
