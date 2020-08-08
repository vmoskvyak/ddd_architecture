import 'package:ddd_architecture/domain/notes/failure/note_failure.dart';
import 'package:flutter/material.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final NoteFailure failure;

  const CriticalFailureDisplay({Key key, @required this.failure})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Text(
            'oyy',
            style: TextStyle(fontSize: 100),
          ),
          Text(
            failure.maybeMap(
                insuficcentPermissions: (_) => 'Insufficient premissions',
                orElse: () => 'Unexpected error'),
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24),
          ),
          FlatButton(
            onPressed: () {
              print("Sending email");
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Icon(Icons.mail),
                const SizedBox(
                  width: 4,
                ),
                Text('I NEED HELP'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
