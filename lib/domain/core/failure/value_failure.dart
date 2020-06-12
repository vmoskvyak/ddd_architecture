import 'package:ddd_architecture/domain/core/failure/auth_value_failure.dart';
import 'package:ddd_architecture/domain/core/failure/notes_value_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.auth({AuthValueFailure<T> authValueFailure}) = _Auth<T>;
  const factory ValueFailure.notes({NotesValueFailure<T> notesValueFailure}) = _Notes<T>;
}
