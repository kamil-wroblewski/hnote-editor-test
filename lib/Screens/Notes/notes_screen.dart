import 'package:flutter/material.dart';
import 'package:projekt/Screens/Notes/components/notebooks.dart';

import 'components/note.dart';
import 'components/notecard.dart';
class NotesScreen extends StatefulWidget {
  const NotesScreen({Key key}) : super(key: key);

  @override
  _NotesScreenState createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {

  NoteBooks noteBook;

  // List<Note> listOfNotes = [
  //   Note(title: 'test'),
  //   Note(title: 'test2')
  // ];

  Widget noteTemplate(note) {
    return NoteCard(note, noteBook.tagColor);
  }

  @override
  Widget build(BuildContext context) {

    final data = ModalRoute.of(context).settings.arguments as Map;
    noteBook = data['squareButton'];

    return Scaffold(
      appBar: AppBar(
        title: Text(noteBook.title),
        backgroundColor: noteBook.tagColor,
      ),
      body: ListView(
        children: noteBook.listOfNotes.map((note) => noteTemplate(note)).toList(),
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: () {setState(() {
        noteBook.listOfNotes.add(Note(title: 'Nowy'));
      });},
        icon: Icon(Icons.add),
        label: Text('Nowa notatka'),
        backgroundColor: noteBook.tagColor,
      ),
    );
  }

}