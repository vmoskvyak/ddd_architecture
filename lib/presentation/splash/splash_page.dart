import 'package:auto_route/auto_route.dart';
import 'package:ddd_architecture/application/auth/auth_bloc.dart';
import 'package:ddd_architecture/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          authenticated: () {
            //ExtendedNavigator.of(context).pushReplacementNamed(Routes.)
            print("autenticated");
          },
          unauthenticated: () {
            ExtendedNavigator.of(context)
                .pushReplacementNamed(Routes.signInPage);
          },
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
