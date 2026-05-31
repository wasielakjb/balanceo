import 'package:auto_route/auto_route.dart';
import 'package:balanceo/app/router/app_router.gr.dart';

abstract class ChartsRoutes {
  static List<AutoRoute> routes = [
    AutoRoute(
      path: '/charts',
      page: ChartsRoute.page,
    ),
  ];
}
