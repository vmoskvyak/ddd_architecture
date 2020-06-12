import 'package:auto_route/auto_route.dart';
import 'package:ddd_architecture/application/auth/auth_bloc.dart';
import 'package:ddd_architecture/injection.dart';
import 'package:ddd_architecture/presentation/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>()
          ..add(AuthEvent.authCheckRequested()),
        )
      ],
      child: MaterialApp(
        title: 'Notes',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.green[800],
          accentColor: Colors.blueAccent,
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        builder: ExtendedNavigator(router: Router(),),
      ),
    );
  }
}
