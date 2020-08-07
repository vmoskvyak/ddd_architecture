import 'package:auto_route/auto_route.dart';
import 'package:ddd_architecture/application/auth/auth_bloc.dart';
import 'package:ddd_architecture/application/notes/note_actor/note_actor_bloc.dart';
import 'package:ddd_architecture/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:ddd_architecture/injection.dart';
import 'package:ddd_architecture/presentation/routes/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NoteWatcherBloc>(
          create: (context) => getIt<NoteWatcherBloc>()
            ..add(
              NoteWatcherEvent.watchAllStarted(),
            ),
        ),
        BlocProvider<NoteActorBloc>(
          create: (context) => getIt<NoteActorBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unauthenticated: (_) =>
                    ExtendedNavigator.of(context).popAndPush(Routes.signInPage),
                orElse: () {},
              );
            },
          ),
          BlocListener<NoteActorBloc, NoteActorState>(
            listener: (context, state) {
              state.maybeMap(
                deleteFailure: (state) {
                  FlushbarHelper.createError(
                          duration: const Duration(seconds: 5),
                          message: state.noteFailure.map(
                              unexpected: (_) =>
                                  "Unexpected error occured while deleting",
                              insuficcentPermissions: (_) =>
                                  "insuficcent premissions",
                              unableToUpdate: (_) => "impossible error",
                              unableToDelete: (_) => "impossible error"))
                      .show(context);
                },
                orElse: () {},
              );
            },
          )
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Notes'),
            leading: IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                BlocProvider.of<AuthBloc>(context)
                    .add(const AuthEvent.signedOut());
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.indeterminate_check_box),
                onPressed: () {},
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
          body: Center(),
        ),
      ),
    );
  }
}
