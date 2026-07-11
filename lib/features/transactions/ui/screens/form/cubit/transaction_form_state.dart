part of 'transaction_form_cubit.dart';

class TransactionFormState extends Equatable {
  const TransactionFormState({
    required this.initialized,
    required this.pending,
    required this.resource,
  });

  factory TransactionFormState.initial() {
    return const TransactionFormState(
      initialized: false,
      pending: false,
      resource: null,
    );
  }

  final bool initialized;
  final bool pending;
  final TransactionResource? resource;

  TransactionFormState copyWith({
    bool? initialized,
    bool? pending,
    TransactionResource? resource,
  }) {
    return TransactionFormState(
      initialized: initialized ?? this.initialized,
      pending: pending ?? this.pending,
      resource: resource ?? this.resource,
    );
  }

  @override
  List<Object?> get props => [
        initialized,
        pending,
        resource,
      ];
}
