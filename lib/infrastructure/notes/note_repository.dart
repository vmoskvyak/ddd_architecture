import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ddd_architecture/domain/notes/failure/note_failure.dart';
import 'package:ddd_architecture/domain/notes/entities/note.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd_architecture/domain/notes/repository/i_note_repository.dart';
import 'package:ddd_architecture/infrastructure/notes/note_dtos.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:ddd_architecture/infrastructure/core/firestore_helpers.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: INoteRepository)
class NoteRepository extends INoteRepository {
  final Firestore _firestore;

  NoteRepository(this._firestore);

  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();

    yield* userDoc.noteCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<NoteFailure, KtList<Note>>(
            snapshot.documents
                .map(
                  (doc) => NoteDto.fromFirestore(doc).toDomain(),
                )
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains("PERMISSION_DENIED")) {
        return left(const NoteFailure.insuficcentPermissions());
      } else {
        // log.e(e.toString());
        return left(const NoteFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleated() async* {
    final userDoc = await _firestore.userDocument();

    yield* userDoc.noteCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => snapshot.documents.map(
            (doc) => NoteDto.fromFirestore(doc).toDomain(),
          ),
        )
        .map(
          (notes) => right<NoteFailure, KtList<Note>>(notes
              .where(
                (note) =>
                    note.todos.getOrCrash().any((todoItem) => !todoItem.isDone),
              )
              .toImmutableList()),
        )
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains("PERMISSION_DENIED")) {
        return left(const NoteFailure.insuficcentPermissions());
      } else {
        // log.e(e.toString());
        return left(const NoteFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<NoteFailure, Unit>> create(Note note) async {
    try {
      final userDoc = await _firestore.userDocument();
      final noteDto = NoteDto.fromDomain(note);

      await userDoc.noteCollection
          .document(noteDto.id)
          .setData(noteDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains("PERMISSION_DENIED")) {
        return left(const NoteFailure.insuficcentPermissions());
      } else {
        // log.e(e.toString());
        return left(const NoteFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> update(Note note) async {
    try {
      final userDoc = await _firestore.userDocument();
      final noteDto = NoteDto.fromDomain(note);

      await userDoc.noteCollection
          .document(noteDto.id)
          .updateData(noteDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains("PERMISSION_DENIED")) {
        return left(const NoteFailure.insuficcentPermissions());
      } else if (e.message.contains("NOT_FOUND")) {
        return left(const NoteFailure.unableToUpdate());
      } else {
        // log.e(e.toString());
        return left(const NoteFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> delete(Note note) async {
    try {
      final userDoc = await _firestore.userDocument();
      final noteId = note.id.getOrCrash();

      await userDoc.noteCollection.document(noteId).delete();

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains("PERMISSION_DENIED")) {
        return left(const NoteFailure.insuficcentPermissions());
      } else if (e.message.contains("NOT_FOUND")) {
        return left(const NoteFailure.unableToDelete());
      } else {
        // log.e(e.toString());
        return left(const NoteFailure.unexpected());
      }
    }
  }
}
