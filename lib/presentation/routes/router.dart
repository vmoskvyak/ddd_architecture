import 'package:auto_route/auto_route_annotations.dart';
import 'package:ddd_architecture/presentation/notes/note_form/note_form_page.dart';
import 'package:ddd_architecture/presentation/notes/note_overview/notes_overview_page.dart';
import 'package:ddd_architecture/presentation/sign_in/sign_in_page.dart';
import 'package:ddd_architecture/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: NotesOverviewPage),
    MaterialRoute(page: NoteFormPage, fullscreenDialog: true)
  ],
)
class $Router {}
