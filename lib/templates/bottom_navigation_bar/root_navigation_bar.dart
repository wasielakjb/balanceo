import 'package:auto_route/auto_route.dart';
import 'package:balanceo/app/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RootNavigationBar extends StatelessWidget {
  const RootNavigationBar({super.key});

  List<PageRouteInfo> get _routes => const [
        HomeRoute(),
        TransactionsRoute(),
        WalletRoute(),
        ProfileRoute(),
      ];

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: switch (context.topRoute.name) {
        HomeRoute.name => 0,
        TransactionsRoute.name => 1,
        WalletRoute.name => 2,
        ProfileRoute.name => 3,
        _ => 0,
      },
      onDestinationSelected: (value) => context.router.pushAndPopUntil(
        _routes[value],
        predicate: (route) => route.data?.name == HomeRoute.name,
      ),
      destinations: const [
        NavigationDestination(
          icon: FaIcon(FontAwesomeIcons.house),
          selectedIcon: FaIcon(FontAwesomeIcons.solidHouse),
          label: 'home',
        ),
        NavigationDestination(
          icon: FaIcon(FontAwesomeIcons.calendar),
          selectedIcon: FaIcon(FontAwesomeIcons.solidCalendar),
          label: 'transactions',
        ),
        NavigationDestination(
          icon: FaIcon(FontAwesomeIcons.creditCard),
          selectedIcon: FaIcon(FontAwesomeIcons.solidCreditCard),
          label: 'wallet',
        ),
        NavigationDestination(
          icon: FaIcon(FontAwesomeIcons.circleUser),
          selectedIcon: FaIcon(FontAwesomeIcons.solidCircleUser),
          label: 'profile',
        ),
      ],
    );
  }
}
