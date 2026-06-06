import 'package:balanceo/extensions/color_scheme_extension.dart';
import 'package:balanceo/extensions/text_theme_extension.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SpendingWeeklyWidget extends StatelessWidget {
  const SpendingWeeklyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Spending Weekly', style: context.titleMedium),
          const SizedBox(height: 18),
          const SizedBox(
            height: 200,
            width: double.infinity,
            child: SpendingWeeklyChart(),
          ),
        ],
      ),
    );
  }
}

class SpendingWeeklyChart extends StatefulWidget {
  const SpendingWeeklyChart({super.key});

  @override
  State<SpendingWeeklyChart> createState() => _SpendingWeeklyChartState();
}

class _SpendingWeeklyChartState extends State<SpendingWeeklyChart> {
  List<BarChartGroupData> get getBarGroups => List.generate(
        7,
        (i) => switch (i) {
          0 => makeGroupData(0, 5),
          1 => makeGroupData(1, 6.5),
          2 => makeGroupData(2, 5),
          3 => makeGroupData(3, 7.5),
          4 => makeGroupData(4, 9),
          5 => makeGroupData(5, 11.5),
          6 => makeGroupData(6, 6.5),
          _ => throw Error(),
        },
      );

  BarChartGroupData makeGroupData(int x, double y) => BarChartGroupData(
        x: x,
        barRods: [
          BarChartRodData(
            toY: y,
            width: 14,
            color: context.primary,
            borderRadius: BorderRadius.circular(6),
            backDrawRodData: BackgroundBarChartRodData(
              show: true,
              toY: 12,
              color: context.surfaceContainerHighest,
            ),
          ),
        ],
      );

  Widget bottomTitles(double value, TitleMeta meta) => SideTitleWidget(
        meta: meta,
        space: 6,
        child: Text(
          switch (value.toInt()) {
            0 => 'M',
            1 => 'T',
            2 => 'W',
            3 => 'T',
            4 => 'F',
            5 => 'S',
            6 => 'S',
            _ => '',
          },
          style: context.bodyMediumBold.copyWith(
            color: context.onSurface.withValues(alpha: 0.3),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        padding: const EdgeInsets.only(top: 28, bottom: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: context.surfaceContainer,
        ),
        child: BarChart(
          BarChartData(
            maxY: 12,
            barGroups: getBarGroups,
            borderData: FlBorderData(show: false),
            titlesData: FlTitlesData(
              rightTitles: const AxisTitles(),
              topTitles: const AxisTitles(),
              leftTitles: const AxisTitles(),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 28,
                  getTitlesWidget: bottomTitles,
                ),
              ),
            ),
            gridData: const FlGridData(show: false),
          ),
          duration: const Duration(milliseconds: 250),
        ),
      ),
    );
  }
}
