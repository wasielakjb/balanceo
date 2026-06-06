import 'package:balanceo/extensions/color_scheme_extension.dart';
import 'package:balanceo/extensions/text_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BudgetSummaryWidget extends StatelessWidget {
  const BudgetSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: const EdgeInsetsGeometry.all(18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: context.surfaceContainer,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total Balance',
              style: context.titleSmall
                  .copyWith(color: context.onSurface.withValues(alpha: 0.6)),
            ),
            const SizedBox(height: 12),
            Text(4285.50.asCurrency, style: context.headlineLarge),
            const SizedBox(height: 38),
            const Row(
              spacing: 12,
              children: [
                Expanded(
                  child: SummaryCard(
                    title: 'Income',
                    amount: 3630,
                    color: Colors.blueAccent,
                    icon: Icons.arrow_downward_rounded,
                  ),
                ),
                Expanded(
                  child: SummaryCard(
                    title: 'Expense',
                    amount: 726.20,
                    color: Colors.redAccent,
                    icon: Icons.arrow_upward_rounded,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SummaryCard extends StatelessWidget {
  const SummaryCard({
    required this.title,
    required this.amount,
    required this.color,
    required this.icon,
    super.key,
  });

  final String title;
  final double amount;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color.withValues(alpha: 0.3),
      ),
      child: Row(
        spacing: 12,
        children: [
          Icon(icon, color: color, size: 18),
          Column(
            spacing: 2,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: context.labelMedium.copyWith(color: color)),
              Text(
                amount.asCurrency,
                style: context.bodyMediumBold.copyWith(fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

extension on double {
  String get asCurrency => NumberFormat.currency(
        locale: 'pl_PL',
        decimalDigits: (this % 1 == 0) ? 0 : 2,
      ).format(this);
}
