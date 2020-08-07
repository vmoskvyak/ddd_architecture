import 'dart:async';
import 'dart:html';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd_architecture/domain/notes/entities/note.dart';
import 'package:ddd_architecture/domain/notes/failure/note_failure.dart';
import 'package:ddd_architecture/domain/notes/repository/i_note_repository.dart';
import 'package:ddd_architecture/domain/notes/value_objects/list_three.dart';
import 'package:ddd_architecture/domain/notes/value_objects/note_body.dart';
import 'package:ddd_architecture/domain/notes/value_objects/note_color.dart';
import 'package:ddd_architecture/infrastructure/notes/note_dtos.dart';
import 'package:ddd_architecture/presentation/notes/note_form/misc/todo_item_presentation_classes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

part 'note_form_event.dart';
part 'note_form_state.dart';
part 'note_form_bloc.freezed.dart';

@injectable
class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  final INoteRepository _noteRepository;

  NoteFormBloc(this._noteRepository) : super(NoteFormState.initial());

  @override
  Stream<NoteFormState> mapEventToState(
    NoteFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialNoteOption.fold(
            () => state,
            (initialNote) =>
                state.copyWith(note: initialNote, isEditing: true));
      },
      bodyChanged: (e) async* {
        yield state.copyWith(
          note: state.note.copyWith(noteBody: NoteBody(e.bodyStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      coloryChanged: (e) async* {
        yield state.copyWith(
          note: state.note.copyWith(color: NoteColor(e.color)),
          saveFailureOrSuccessOption: none(),
        );
      },
      todosChanged: (e) async* {
        yield state.copyWith(
          note: state.note.copyWith(
              todos: List3(e.todos.map((primitive) => primitive.toDomain()))),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<NoteFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.note.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _noteRepository.update(state.note)
              : await _noteRepository.create(state.note);
        }

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
