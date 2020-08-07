import 'package:ddd_architecture/domain/core/unique_id.dart';
import 'package:ddd_architecture/domain/notes/entities/todo_item.dart';
import 'package:ddd_architecture/domain/notes/value_objects/todo_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_item_presentation_classes.freezed.dart';

@freezed
abstract class TodoItemPrimitive implements _$TodoItemPrimitive {
  const TodoItemPrimitive._();

  const factory TodoItemPrimitive({
    @required UniqueId id,
    @required String name,
    @required bool done,
  }) = _TodoItemPrimitive;

  factory TodoItemPrimitive.empty() => TodoItemPrimitive(
        id: UniqueId(),
        name: '',
        done: false,
      );

  factory TodoItemPrimitive.fromDomain(TodoItem todoItem) {
    return TodoItemPrimitive(
      id: todoItem.id,
      name: todoItem.todoName.getOrCrash(),
      done: todoItem.isDone,
    );
  }

  TodoItem toDomain() {
    return TodoItem(
      id: id,
      todoName: TodoName(name),
      isDone: done,
    );
  }
}
