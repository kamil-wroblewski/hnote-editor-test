import 'package:flutter/material.dart';
import 'package:projekt/constants.dart';

import 'notebooks.dart';

class notebookCard extends StatelessWidget {

  NoteBooks noteBooks;
  notebookCard(NoteBooks noteBooks){
    this.noteBooks = noteBooks;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () { Navigator.pushNamed(context, '/notebooks/notes', arguments: {'notebook': noteBooks}); },
        child:
          Container(
            padding: EdgeInsets.all(10.0),
            color: primaryLightColor,
            alignment: Alignment.center,
            child: Column(
              children: [
                Divider(
                  height: 10.0,
                  thickness: 3.0,
                  color: noteBooks.tagColor
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(flex: 1, child: Icon(Icons.notes)),
                    Expanded(flex: 3, child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        noteBooks.title,
                      )
                      ),
                    ),
                    Expanded(flex:1, child: Text(noteBooks.dateOfLastModification)),
                  ],
                )
              ],
            )
          )
      )
    );
  }
}
