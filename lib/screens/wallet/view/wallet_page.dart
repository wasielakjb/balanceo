import 'package:auto_route/auto_route.dart';
import 'package:balanceo/templates/bottom_navigation_bar/root_navigation_bar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('WalletPage'),
      ),
      bottomNavigationBar: RootNavigationBar(),
    );
  }
}
