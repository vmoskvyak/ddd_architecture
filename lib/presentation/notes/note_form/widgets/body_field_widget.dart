import 'package:ddd_architecture/application/notes/note_form/note_form_bloc.dart';
import 'package:ddd_architecture/domain/notes/value_objects/note_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BodyField extends HookWidget {
  const BodyField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocListener<NoteFormBloc, NoteFormState>(
      listenWhen: (previous, current) =>
          previous.isEditing != current.isEditing,
      listener: (context, state) {
        textEditingController.text = state.note.noteBody.getOrCrash();
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextFormField(
          controller: textEditingController,
          decoration: InputDecoration(
            labelText: 'Note',
          ),
          maxLength: NoteBody.MAX_LENGTH,
          maxLines: null,
          minLines: 5,
          onChanged: (value) => context.bloc<NoteFormBloc>().add(
                NoteFormEvent.bodyChanged(value),
              ),
          validator: (_) =>
              context.bloc<NoteFormBloc>().state.note.noteBody.value.fold(
                    (l) => l.maybeMap(
                      notes: (f) => 'Cannot be empty',
                      orElse: () => null,
                    ),
                    (r) => null,
                  ),
        ),
      ),
    );
  }
}
