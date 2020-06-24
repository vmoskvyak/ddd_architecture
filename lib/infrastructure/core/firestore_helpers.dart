import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ddd_architecture/domain/auth/i_auth_facade.dart';
import 'package:ddd_architecture/domain/core/error/not_authenticated_error.dart';
import 'package:ddd_architecture/injection.dart';

extension FirestoreX on Firestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
        .collection("users")
        .document(user.uniqueId.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get noteCollection => collection("notes");
}
