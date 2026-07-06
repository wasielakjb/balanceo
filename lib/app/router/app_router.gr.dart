// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:balanceo/screens/home/view/home_page.dart' as _i1;
import 'package:balanceo/screens/profile/view/profile_page.dart' as _i2;
import 'package:balanceo/screens/transactions/form/view/transaction_form_page.dart'
    as _i3;
import 'package:balanceo/screens/transactions/view/transactions_page.dart'
    as _i4;
import 'package:balanceo/screens/wallet/view/wallet_page.dart' as _i5;

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomePage();
    },
  );
}

/// generated route for
/// [_i2.ProfilePage]
class ProfileRoute extends _i6.PageRouteInfo<void> {
  const ProfileRoute({List<_i6.PageRouteInfo>? children})
      : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.ProfilePage();
    },
  );
}

/// generated route for
/// [_i3.TransactionFormPage]
class TransactionFormRoute extends _i6.PageRouteInfo<void> {
  const TransactionFormRoute({List<_i6.PageRouteInfo>? children})
      : super(TransactionFormRoute.name, initialChildren: children);

  static const String name = 'TransactionFormRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.TransactionFormPage();
    },
  );
}

/// generated route for
/// [_i4.TransactionsPage]
class TransactionsRoute extends _i6.PageRouteInfo<void> {
  const TransactionsRoute({List<_i6.PageRouteInfo>? children})
      : super(TransactionsRoute.name, initialChildren: children);

  static const String name = 'TransactionsRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.TransactionsPage();
    },
  );
}

/// generated route for
/// [_i5.WalletPage]
class WalletRoute extends _i6.PageRouteInfo<void> {
  const WalletRoute({List<_i6.PageRouteInfo>? children})
      : super(WalletRoute.name, initialChildren: children);

  static const String name = 'WalletRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.WalletPage();
    },
  );
}
