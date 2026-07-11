import 'package:balanceo/features/transactions/ui/screens/form/form_builders/transaction_keys.dart';
import 'package:reactive_forms/reactive_forms.dart';

typedef _K = TransactionKeys;

abstract class TransactionFormGroupFactory {
  static FormGroup create() {
    return FormGroup({
      _K.type: FormControl<String>(
        validators: [Validators.required],
      ),
      _K.title: FormControl<String>(
        validators: [Validators.required],
      ),
      _K.amount: FormControl<double>(
        validators: [Validators.required],
      ),
      _K.dateTime: FormControl<DateTime>(
        validators: [Validators.required],
      ),
      _K.category: FormControl<String>(
        validators: [Validators.required],
      ),
      _K.note: FormControl<String?>(),
    });
  }
}
