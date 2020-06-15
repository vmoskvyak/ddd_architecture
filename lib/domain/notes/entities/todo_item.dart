import 'package:dartz/dartz.dart';
import 'package:ddd_architecture/domain/core/failure/value_failure.dart';
import 'package:ddd_architecture/domain/core/unique_id.dart';
import 'package:ddd_architecture/domain/notes/value_objects/todo_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_item.freezed.dart';

@freezed
abstract class TodoItem implements _$TodoItem {
  const TodoItem._();

  const factory TodoItem({
    @required UniqueId id,
    @required TodoName todoName,
    @required bool isDone,
  }) = _TodoItem;

  factory TodoItem.empty() => TodoItem(
        id: UniqueId(),
        todoName: TodoName(''),
        isDone: false,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return todoName.value.fold(
      (l) => some(l),
      (_) => none(),
    );
  }
}
