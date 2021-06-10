import 'package:flutter/material.dart';
import 'package:projekt/Screens/Notes/notes_screen.dart';
import 'package:projekt/constants.dart';
import 'package:projekt/Screens/Welcome/welcome_screen.dart';
import 'package:projekt/Screens/Main/main_screen.dart';
import 'package:projekt/Screens/Notes/notebooks_screen.dart';

import 'Screens/Notes/notes_editor_screen.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hnote',
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/notebooks',
      routes:{
        '/': (context) => Main(),
        '/auth': (context) => WelcomeScreen(),
        '/notebooks': (context) => NotebooksScreen(),
        '/notebooks/notes': (context) => NotesScreen(),
        '/notebooks/notes/notesEditor': (context) => NotesEditor()
      }
    );
  }
}
