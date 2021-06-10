import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'note.dart';

class NoteCard extends StatelessWidget {
  Note note;
  Color color;
  NoteCard(Note note,Color color){
    this.note = note;
    this.color = color;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        child: InkWell(
            onTap: () { Navigator.pushNamed(context, '/notebooks/notes/notesEditor', arguments: {'note': note});},
            child:
            Container(
                padding: EdgeInsets.all(10.0),
                color: color.withOpacity(.40),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Divider(
                        height: 10.0,
                        thickness: 3.0,
                        color: color,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(flex: 1, child: Icon(Icons.notes)),
                        Expanded(flex: 3, child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              note.title,
                            )
                        ),
                        ),
                        Expanded(flex:1, child: Text(note.dateOfLastModification)),
                      ],
                    )
                  ],
                )
            )
        )
    );
  }
}
