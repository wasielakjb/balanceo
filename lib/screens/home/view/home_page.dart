import 'package:auto_route/auto_route.dart';
import 'package:balanceo/app/router/app_router.gr.dart';
import 'package:balanceo/screens/home/widget/home_app_bar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(
        chartsRoute: ChartsRoute(),
        settingsRoute: SettingsRoute(),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(Icons.add_rounded, size: 28),
      ),
    );
  }
}
