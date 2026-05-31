import 'package:auto_route/auto_route.dart';
import 'package:balanceo/screens/charts/routing/charts_routes.dart';
import 'package:balanceo/screens/home/routing/home_routes.dart';
import 'package:balanceo/screens/settings/routing/settings_routes.dart';
import 'package:injectable/injectable.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        ...HomeRoutes.routes,
        ...ChartsRoutes.routes,
        ...SettingsRoutes.routes,
      ];
}
