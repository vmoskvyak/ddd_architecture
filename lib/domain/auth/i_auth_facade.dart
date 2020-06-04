import 'package:dartz/dartz.dart';
import 'package:ddd_architecture/domain/auth/email_address.dart';
import 'package:ddd_architecture/domain/auth/failure/auth_failure.dart';
import 'package:ddd_architecture/domain/auth/password.dart';
import 'package:flutter/material.dart';

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
}