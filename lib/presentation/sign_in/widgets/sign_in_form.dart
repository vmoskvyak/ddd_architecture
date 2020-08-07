import 'package:auto_route/auto_route.dart';
import 'package:ddd_architecture/application/auth/auth_bloc.dart';
import 'package:ddd_architecture/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:ddd_architecture/presentation/routes/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () => {},
          (either) => either.fold(
            (l) => {
              FlushbarHelper.createError(
                message: l.map(
                  cancelledByUser: (_) => "Canceled",
                  serverError: (_) => "Server Error",
                  emailAlreadyInUse: (_) => "Email already in use",
                  invalidEmailAndPasswordCombination: (_) =>
                      "invalid email and password combination",
                ),
              ).show(context)
            },
            (r) => {
              ExtendedNavigator.of(context)
                  .popAndPush(Routes.notesOverviewPage),
              context.bloc<AuthBloc>().add(const AuthEvent.authCheckRequested())
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidate: state.showErrorMessages,
          child: ListView(
            padding: EdgeInsets.all(8),
            children: <Widget>[
              const Text(
                '📝',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 138),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email), labelText: 'Email'),
                autocorrect: false,
                onChanged: (value) => context
                    .bloc<SignInFormBloc>()
                    .add(SignInFormEvent.emailChanged(value)),
                validator: (_) => context
                    .bloc<SignInFormBloc>()
                    .state
                    .emailAddress
                    .value
                    .fold(
                      (l) => l.maybeMap(
                        auth: (f) {
                          //return f.authValueFailure.map(invalidEmail: (message) => message.failedValue, shortPassword: (_) => null,);
                          //if (f.authValueFailure is InvalidEmail) return "Invalid Email"; else return null;
                          return f.authValueFailure.maybeMap(
                            invalidEmail: (value) => value.failedValue,
                            orElse: () => null,
                          );
                        },
                        orElse: () => null,
                      ),
                      (r) => null,
                    ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock), labelText: 'Password'),
                autocorrect: false,
                obscureText: true,
                onChanged: (value) => context
                    .bloc<SignInFormBloc>()
                    .add(SignInFormEvent.passwordChanged(value)),
                validator: (_) =>
                    context.bloc<SignInFormBloc>().state.password.value.fold(
                          (l) => l.maybeMap(
                            auth: (f) {
                              return f.authValueFailure.maybeMap(
                                shortPassword: (_) => "Srort Password",
                                orElse: () => null,
                              );
                            },
                            orElse: () => null,
                          ),
                          (r) => null,
                        ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        context.bloc<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .signInWithEmailAndPasswordPressed(),
                            );
                      },
                      child: const Text("SIGN IN"),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        context.bloc<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .registerWithEmailAndPasswordPressed(),
                            );
                      },
                      child: const Text("REGISTER"),
                    ),
                  ),
                ],
              ),
              RaisedButton(
                onPressed: () {
                  context.bloc<SignInFormBloc>().add(
                        const SignInFormEvent.signInWithGooglePressed(),
                      );
                },
                color: Colors.lightBlue,
                child: const Text(
                  "SIGN IN WITH GOOGLE",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              if (state.isSubmitting) ...[
                const SizedBox(height: 8),
                const LinearProgressIndicator(value: null)
              ]
            ],
          ),
        );
      },
    );
  }
}
