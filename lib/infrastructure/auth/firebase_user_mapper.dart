import 'package:ddd_architecture/domain/auth/entities/user.dart';
import 'package:ddd_architecture/domain/core/unique_id.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUserDomainX on FirebaseUser {
  User toDomain() {
    return User(uniqueId: UniqueId.fromUniqueString(uid));
  }
}