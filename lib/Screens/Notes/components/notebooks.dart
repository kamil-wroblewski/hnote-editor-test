import 'package:flutter/material.dart';
import 'package:projekt/constants.dart';

import 'note.dart';

/// Class which represents one notebook.
class NoteBooks{

  String title;               // title of notebook
  String description;         // Description of notebook

  Color tagColor;             // Color of notebooks tag

  String dateOfLastModification;

  List<Note> listOfNotes = [];


  NoteBooks({this.title = newNotebookTitle, this.description = newNotebookDesc, this.tagColor = defaultTagColor}){
    updateDate();
   // setTagColor(defaultTagColor);
  }

  /// Method which changes the date of last modification to the current one
  void updateDate(){
    DateTime date;
    date = DateTime.now();

    String day = date.day.toString();
    if(day.length < 2) day = '0'+day;

    String month = date.month.toString();
    if(month.length < 2) month = '0'+month;

    String year = date.year.toString();

    dateOfLastModification = year + '-' + month + '-' + day;
  }


  String getTitle() => this.title;
  String getDesc() => this.description;
  String getDateOfLastMod() => this.dateOfLastModification;
  Color getTagColor() => this.tagColor;

  void setTagColor(Color c) => this.tagColor = c;

  void transferTo(context){
    Navigator.pushNamed(context, '/notebooks/notes', arguments: {'notebook': this});
  }


}
