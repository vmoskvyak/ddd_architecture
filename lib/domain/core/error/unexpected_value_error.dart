import 'package:ddd_architecture/domain/core/failure/value_failure.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanationString = "Encountered a ValueFailure at an unrecoverable point. Terminating.";
    return Error.safeToString("$explanationString Failure was $valueFailure");
  }
}