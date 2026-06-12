import 'package:auto_route/auto_route.dart';
import 'package:balanceo/app/router/app_router.dart';
import 'package:balanceo/app/theme/app_theme.dart';
import 'package:balanceo/di.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  App({super.key});

  final AppRouter _router = inject<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      routerConfig: _router.config(
        navigatorObservers: () => [AutoRouteObserver()],
      ),
    );
  }
}
