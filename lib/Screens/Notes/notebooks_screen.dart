import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:projekt/Screens/Notes/components/notebooks.dart';
import 'package:projekt/components/SquareButton.dart';
import 'package:projekt/constants.dart';


class NotebooksScreen extends StatefulWidget {
  const NotebooksScreen({Key key}) : super(key: key);

  @override
  _NotebooksScreenState createState() => _NotebooksScreenState();
}

class _NotebooksScreenState extends State<NotebooksScreen> {

  List<NoteBooks> listOfNotebooks = [
    NoteBooks(title: 'Pszyrka', tagColor: Colors.red),
    NoteBooks(title: 'Majma'),
    NoteBooks(title: 'Rela', tagColor: Colors.green),
    NoteBooks(title: 'wuef', tagColor: Colors.amber),
  ];

  Widget notebookTemplate(NoteBooks notebook){
    return GestureDetector(
        onLongPress: () {showDialog(context: context, builder: (_) => deleteNotebook(notebook), barrierDismissible: false);},
        child: SquareButton(buttonTitle: notebook.title, color: notebook.tagColor, onTap: notebook));
  }

  String newNotebookTitle;
  Color tagColor = Colors.red;

  Widget colorPicker(){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton(onPressed: () {tagColor = Colors.red;}, child: Icon(Icons.circle, color: Colors.red, size: 40.0)),
          TextButton(onPressed: () {tagColor = Colors.blue;}, child: Icon(Icons.circle, color: Colors.blue, size: 40.0)),
          TextButton(onPressed: () {tagColor = Colors.green;}, child: Icon(Icons.circle, color: Colors.green, size: 40.0)),
        ],
      ),
    );
  }

  Widget deleteNotebook(NoteBooks notebook){
    return AlertDialog(
      title: const Text('Napewno chcesz usunąć ten zeszyt?'),
      content: Container(
        height: 25.0,
        child: Text(notebook.title),
      ),
      actions: [
        TextButton(onPressed: () {setState(() {
          listOfNotebooks.remove(notebook);
        });
        Navigator.of(context).pop();},
            child: Text('Tak')),
        TextButton(onPressed: () {Navigator.of(context).pop();}, child: Text('Nie'))
      ],
    );
  }

  Widget createNewNotebook(){
    return AlertDialog(
      title: const Text('Stwórz nowy zeszyt'),
      content: Container(
        height: 150.0,
        child: Column(
          children: <Widget>[
            Text('Nazwa: '),
            TextField(
              onChanged: (name) => newNotebookTitle = name,
            ),
            Container(height: 5.0,),
            Text('Etykieta: '),
            colorPicker(),
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: () {setState(() {
          listOfNotebooks.add(NoteBooks(title: newNotebookTitle, tagColor: tagColor));
          Navigator.of(context).pop();
        });},
            child: Text('Stwórz')),
        TextButton(onPressed: () {Navigator.of(context).pop();}, child: Text('Anuluj'))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: listOfNotebooks.map((notebook) => notebookTemplate(notebook)).toList(),
      ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () { showDialog(context: context, builder: (_) => createNewNotebook(), barrierDismissible: false);},
          icon: Icon(CommunityMaterialIcons.plus),
          label: const Text(addNewNotebook),
          backgroundColor: primaryColor,
      ),
    );
  }
}

