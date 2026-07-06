import 'package:auto_route/auto_route.dart';
import 'package:balanceo/screens/home/widget/available_balance_wgt.dart';
import 'package:balanceo/screens/home/widget/budget_summary_wgt.dart';
import 'package:balanceo/screens/home/widget/cash_overview_wgt.dart';
import 'package:balanceo/screens/home/widget/home_app_bar.dart';
import 'package:balanceo/screens/home/widget/saving_goal_summary_wgt.dart';
import 'package:balanceo/templates/bottom_navigation_bar/root_navigation_bar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12),
            AvailableBalanceWidget(
              currentBalance: 3578.28,
            ),
            SizedBox(height: 12),
            BudgetSummaryWidget(
              monthName: 'June',
              currentBudget: 2478,
            ),
            SizedBox(height: 20),
            SavingGoalSummaryWidget(),
            SizedBox(height: 18),
            CashOverviewWidget(
              incomeAmount: 1820.50,
              expenseAmount: 1325.46,
            ),
          ],
        ),
      ),
      bottomNavigationBar: RootNavigationBar(),
    );
  }
}
