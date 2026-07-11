import 'package:auto_route/auto_route.dart';
import 'package:balanceo/app/router/app_router.gr.dart';
import 'package:balanceo/extensions/color_scheme_extension.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class RootNavigationBar extends StatelessWidget {
  const RootNavigationBar({super.key});

  static const List<PageRouteInfo> _routes = [
    HomeRoute(),
    TransactionsListRoute(),
    TransactionFormRoute(),
    WalletRoute(),
    ProfileRoute(),
  ];

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: _routes.indexWhere(
        (route) => route.routeName == context.topRoute.name,
      ),
      onDestinationSelected: (value) => context.router.navigate(_routes[value]),
      destinations: [
        const NavigationDestination(
          icon: HugeIcon(icon: HugeIcons.strokeRoundedHome02),
          label: 'Home',
          tooltip: '',
        ),
        const NavigationDestination(
          icon: HugeIcon(icon: HugeIcons.strokeRoundedTransactionHistory),
          label: 'Transaction',
          tooltip: '',
        ),
        NavigationDestination(
          icon: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.primary,
            ),
            child: HugeIcon(
              icon: HugeIcons.strokeRoundedAdd01,
              color: context.surface,
            ),
          ),
          label: 'Add Transaction',
          tooltip: '',
        ),
        const NavigationDestination(
          icon: HugeIcon(icon: HugeIcons.strokeRoundedPieChart),
          label: 'Chart',
          tooltip: '',
        ),
        const NavigationDestination(
          icon: HugeIcon(icon: HugeIcons.strokeRoundedUser),
          label: 'User',
          tooltip: '',
        ),
      ],
    );
  }
}
