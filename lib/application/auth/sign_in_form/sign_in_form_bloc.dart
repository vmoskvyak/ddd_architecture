import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd_architecture/domain/auth/email_address.dart';
import 'package:ddd_architecture/domain/auth/failure/auth_failure.dart';
import 'package:ddd_architecture/domain/auth/i_auth_facade.dart';
import 'package:ddd_architecture/domain/auth/password.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {

  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade);

  @override
  SignInFormState get initialState => SignInFormState.initial();

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
