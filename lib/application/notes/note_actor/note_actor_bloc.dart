import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ddd_architecture/domain/notes/entities/note.dart';
import 'package:ddd_architecture/domain/notes/failure/note_failure.dart';
import 'package:ddd_architecture/domain/notes/repository/i_note_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'note_actor_event.dart';
part 'note_actor_state.dart';

part 'note_actor_bloc.freezed.dart';

@injectable
class NoteActorBloc extends Bloc<NoteActorEvent, NoteActorState> {
  final INoteRepository _noteRepository;

  NoteActorBloc(this._noteRepository);

  @override
  NoteActorState get initialState => NoteActorState.initial();

  @override
  Stream<NoteActorState> mapEventToState(
    NoteActorEvent event,
  ) async* {
    yield const NoteActorState.actionInProgress();
    var possibleFailure = await _noteRepository.delete(event.note);

    yield possibleFailure.fold(
      (l) => NoteActorState.deleteFailure(l),
      (r) => const NoteActorState.deleteSuccess(),
    );
  }
}
