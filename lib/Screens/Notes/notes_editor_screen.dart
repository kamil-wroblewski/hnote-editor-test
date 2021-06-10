import 'package:flutter/material.dart';
import 'package:projekt/components/TextEditor/text_editor_screen.dart';

class NotesEditor extends StatefulWidget {
  const NotesEditor({Key key}) : super(key: key);

  @override
  _NotesEditorState createState() => _NotesEditorState();
}

class _NotesEditorState extends State<NotesEditor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        TextEditorScreen(),
    );
  }
}
