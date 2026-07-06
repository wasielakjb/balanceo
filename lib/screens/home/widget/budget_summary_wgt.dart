import 'package:balanceo/extensions/color_scheme_extension.dart';
import 'package:balanceo/extensions/currency_extension.dart';
import 'package:balanceo/extensions/text_theme_extension.dart';
import 'package:flutter/material.dart';

class BudgetSummaryWidget extends StatelessWidget {
  const BudgetSummaryWidget({
    required this.monthName,
    required this.currentBudget,
    super.key,
  });

  final String monthName;
  final double currentBudget;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.surfaceTint,
      borderRadius: BorderRadius.circular(24),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(24),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                spacing: 4,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Budget for $monthName',
                    style: context.titleSmall.copyWith(color: context.surface),
                  ),
                  Text(
                    'Available cash',
                    style: context.bodyMedium
                        .copyWith(color: context.outlineVariant),
                  ),
                ],
              ),
              Text(
                currentBudget.asCurrency(),
                style: context.titleLarge.copyWith(
                  color: context.surface,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
