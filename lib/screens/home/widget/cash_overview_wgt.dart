import 'package:balanceo/extensions/color_scheme_extension.dart';
import 'package:balanceo/extensions/currency_extension.dart';
import 'package:balanceo/extensions/text_theme_extension.dart';
import 'package:flutter/material.dart';

class CashOverviewWidget extends StatelessWidget {
  const CashOverviewWidget({
    required this.incomeAmount,
    required this.expenseAmount,
    super.key,
  });

  final double incomeAmount;
  final double expenseAmount;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Cash', style: context.bodyLargeBold),
        Row(
          spacing: 18,
          children: [
            Expanded(
              child: _CashCardWidget(
                icon: Icons.account_balance_rounded,
                title: 'Income',
                amount: incomeAmount,
                color: Colors.lightBlueAccent,
              ),
            ),
            Expanded(
              child: _CashCardWidget(
                icon: Icons.wallet,
                title: 'Expense',
                amount: expenseAmount,
                color: Colors.redAccent,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _CashCardWidget extends StatelessWidget {
  const _CashCardWidget({
    required this.icon,
    required this.title,
    required this.amount,
    required this.color,
  });

  final IconData icon;
  final String title;
  final double amount;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: color.withValues(alpha: 0.2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(99),
              color: color,
            ),
            child: Icon(icon, color: context.surface, size: 20),
          ),
          const SizedBox(height: 32),
          Text(
            amount.asCurrency(),
            style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            style: context.bodyMedium.copyWith(
              color: context.onSurface.withValues(alpha: 0.8),
            ),
          ),
        ],
      ),
    );
  }
}
