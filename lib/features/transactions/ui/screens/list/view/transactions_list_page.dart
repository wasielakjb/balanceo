import 'package:auto_route/auto_route.dart';
import 'package:balanceo/templates/bottom_navigation_bar/root_navigation_bar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TransactionsListPage extends StatelessWidget {
  const TransactionsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('TransactionsListPage'),
      ),
      bottomNavigationBar: RootNavigationBar(),
    );
  }
}
