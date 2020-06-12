import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notes_value_failure.freezed.dart';

@freezed
abstract class NotesValueFailure<T> with _$NotesValueFailure<T> {
  const factory NotesValueFailure.exceedingLength({
    @required T failedValue,
    @required int max,
  }) = ExceedingLength<T>;
  const factory NotesValueFailure.empty({
    @required T failedValue,
  }) = Empty<T>;
  const factory NotesValueFailure.multyline({
    @required T failedValue,
  }) = Multyline<T>;
  const factory NotesValueFailure.listToLong({
    @required T failedValue,
    @required int max,
  }) = ListToLong<T>;
}
