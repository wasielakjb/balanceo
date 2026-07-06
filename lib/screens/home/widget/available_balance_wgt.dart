import 'package:balanceo/extensions/color_scheme_extension.dart';
import 'package:balanceo/extensions/currency_extension.dart';
import 'package:balanceo/extensions/text_theme_extension.dart';
import 'package:flutter/material.dart';

class AvailableBalanceWidget extends StatelessWidget {
  const AvailableBalanceWidget({
    required this.currentBalance,
    super.key,
  });

  final double currentBalance;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.onPrimaryContainer,
      borderRadius: BorderRadius.circular(24),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(24),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Available balance',
                style: context.bodyLarge.copyWith(color: context.surface),
              ),
              const SizedBox(height: 12),
              Text(
                currentBalance.asCurrency(),
                style: context.headlineLarge.copyWith(color: context.surface),
              ),
              const SizedBox(height: 32),
              Text(
                'See details',
                style: context.bodyMediumBold.copyWith(color: context.surface),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
