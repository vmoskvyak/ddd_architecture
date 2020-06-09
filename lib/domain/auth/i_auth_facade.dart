import 'package:dartz/dartz.dart';
import 'package:ddd_architecture/domain/auth/failure/auth_failure.dart';
import 'package:ddd_architecture/domain/auth/value_objects/email_address.dart';
import 'package:ddd_architecture/domain/auth/value_objects/password.dart';
import 'package:flutter/material.dart';

import 'entities/user.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword( {
    @required EmailAddress emailAddress,
    @required Password password
  });  

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword( {
    @required EmailAddress emailAddress,
    @required Password password
  });  

  Future<Either<AuthFailure, Unit>> signInWithGoogle();  

  Future<Option<User>> getSignedInUser();

  Future<void> signOut();
}