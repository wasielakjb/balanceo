import 'package:auto_route/auto_route.dart';
import 'package:balanceo/extensions/color_scheme_extension.dart';
import 'package:balanceo/extensions/text_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    required this.chartsRoute,
    required this.settingsRoute,
    super.key,
  });

  final PageRouteInfo chartsRoute;
  final PageRouteInfo settingsRoute;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  ButtonStyle iconButtonStyle(BuildContext context) => IconButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        backgroundColor: context.surfaceContainer,
      );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 24,
      title: Column(
        spacing: 4,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Good Morning 👋🏻',
            style: context.bodyMedium.copyWith(
              color: context.onSurface.withValues(alpha: 0.8),
            ),
          ),
          Text(
            DateFormat.yMMMM().format(DateTime.now()),
            style: context.titleMedium,
          ),
        ],
      ),
      actions: [
        IconButton.filled(
          style: iconButtonStyle(context),
          onPressed: () => context.pushRoute(chartsRoute),
          icon: const Icon(Icons.bar_chart_rounded),
        ),
        IconButton.filled(
          style: iconButtonStyle(context),
          onPressed: () => context.pushRoute(settingsRoute),
          icon: const Icon(Icons.settings_rounded),
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
