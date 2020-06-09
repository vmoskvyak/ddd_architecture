import 'package:ddd_architecture/domain/auth/entities/user.dart';
import 'package:ddd_architecture/domain/auth/failure/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd_architecture/domain/auth/i_auth_facade.dart';
import 'package:ddd_architecture/domain/auth/value_objects/email_address.dart';
import 'package:ddd_architecture/domain/auth/value_objects/password.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import './firebase_user_mapper.dart';

//@Environment("dev")
@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
  );

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddressString, password: passwordString);
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == "ERROR_EMAIL_ALREADY_IN_USE") {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();

    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailAddressString, password: passwordString);
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == "ERROR_USER_NOT_FOUND" ||
          e.code == "ERROR_WRONG_PASSWORD") {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      var googleSignInAccount = await _googleSignIn.signIn();
      if (googleSignInAccount == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final authentication = await googleSignInAccount.authentication;
      final authCredential = GoogleAuthProvider.getCredential(
        idToken: authentication.idToken,
        accessToken: authentication.accessToken,
      );
      return _firebaseAuth
          .signInWithCredential(authCredential)
          .then((value) => right(unit));
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Option<User>> getSignedInUser() => _firebaseAuth.currentUser().then(
        (firebaseUser) => optionOf(firebaseUser?.toDomain()),
      );

  @override
  Future<void> signOut() => Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      ]);
}
