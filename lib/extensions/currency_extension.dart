import 'package:intl/intl.dart';

extension CurrencyExtension on double {
  String asCurrency() => NumberFormat.currency(
        symbol: r'$',
        decimalDigits: (this % 1 == 0) ? 0 : 2,
      ).format(this);
}
