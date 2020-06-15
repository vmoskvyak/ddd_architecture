import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ddd_architecture/domain/core/unique_id.dart';
import 'package:ddd_architecture/domain/notes/entities/note.dart';
import 'package:ddd_architecture/domain/notes/entities/todo_item.dart';
import 'package:ddd_architecture/domain/notes/value_objects/list_three.dart';
import 'package:ddd_architecture/domain/notes/value_objects/note_body.dart';
import 'package:ddd_architecture/domain/notes/value_objects/note_color.dart';
import 'package:ddd_architecture/domain/notes/value_objects/todo_name.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'note_dtos.freezed.dart';
part 'note_dtos.g.dart';

@freezed
abstract class NoteDTO implements _$NoteDTO {
  const NoteDTO._();

  const factory NoteDTO({
    @JsonKey(ignore: true) String id,
    @required String body,
    @required int color,
    @required List<TodoItemDTO> todos,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _NoteDTO;

  factory NoteDTO.fromDomain(Note note) {
    return NoteDTO(
      id: note.id.getOrCrash(),
      body: note.noteBody.getOrCrash(),
      color: note.color.getOrCrash().value,
      todos: note.todos
          .getOrCrash()
          .map(
            (todoItem) => TodoItemDTO.fromDomain(todoItem),
          )
          .asList(),
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  Note toDomain() {
    return Note(
      id: UniqueId.fromUniqueString(id),
      noteBody: NoteBody(body),
      color: NoteColor(Color(color)),
      todos: List3(
        todos.map((todoItemDTO) => todoItemDTO.toDomain()).toImmutableList(),
      ),
    );
  }

  factory NoteDTO.fromJson(Map<String, dynamic> json) =>
      _$NoteDTOFromJson(json);
  factory NoteDTO.fromFirestore(DocumentSnapshot doc) =>
      _$NoteDTOFromJson(doc.data).copyWith(id: doc.documentID);
}

@freezed
abstract class TodoItemDTO implements _$TodoItemDTO {
  const TodoItemDTO._();

  const factory TodoItemDTO({
    @required String id,
    @required String name,
    @required bool done,
  }) = _TodoItemDTO;

  factory TodoItemDTO.fromDomain(TodoItem todoItem) {
    return TodoItemDTO(
      id: todoItem.id.getOrCrash(),
      name: todoItem.todoName.getOrCrash(),
      done: todoItem.isDone,
    );
  }

  TodoItem toDomain() {
    return TodoItem(
        id: UniqueId.fromUniqueString(id),
        todoName: TodoName(name),
        isDone: done);
  }

  factory TodoItemDTO.fromJson(Map<String, dynamic> json) =>
      _$TodoItemDTOFromJson(json);
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}
