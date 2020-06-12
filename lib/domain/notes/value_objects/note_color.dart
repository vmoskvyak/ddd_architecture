import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:ddd_architecture/domain/core/failure/value_failure.dart';
import 'package:ddd_architecture/domain/core/utils/value_transformers.dart';
import 'package:ddd_architecture/domain/core/value_object.dart';

class NoteColor extends ValueObject<Color> {
  @override
  final Either<ValueFailure<Color>, Color> value;

  static List<Color> predefinedColors = [
    Color(0xfffafafa),
    Color(0xfffa8072),
    Color(0xfffedc56),
    Color(0xffd0f0c0),
    Color(0xfffca3b7),
    Color(0xff997950),
    Color(0xfffffdd0),
  ];

  const NoteColor._(this.value);

  factory NoteColor(Color input) {
    return NoteColor._(
      right(
        makeColorOpaque(input),
      ),
    );
  }
}
