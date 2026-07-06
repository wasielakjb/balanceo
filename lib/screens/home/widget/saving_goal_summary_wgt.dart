import 'package:balanceo/extensions/color_scheme_extension.dart';
import 'package:balanceo/extensions/text_theme_extension.dart';
import 'package:flutter/material.dart';

class SavingGoalSummaryWidget extends StatelessWidget {
  const SavingGoalSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.surfaceContainer,
      borderRadius: BorderRadius.circular(24),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(24),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            spacing: 20,
            children: [
              Expanded(
                child: Column(
                  spacing: 4,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create a Saving Goal',
                      style: context.titleMedium,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipisci.',
                      style: context.bodyMedium
                          .copyWith(color: context.outlineVariant),
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(99),
                  color: context.primary,
                ),
                child: Icon(
                  Icons.savings,
                  size: 32,
                  color: context.surface,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
