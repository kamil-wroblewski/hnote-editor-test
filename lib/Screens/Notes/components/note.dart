import 'package:projekt/components/TextEditor/text_editor.dart';
import 'package:projekt/constants.dart';
import 'package:flutter/material.dart';

class Note{
  String title;
  List<FocusNode> nodes = [];
  List<TextEditingController> text = [];
  List<TextType> types = [];

  String dateOfLastModification;

  Note({this.title = newNoteTitle}){
    updateDate();
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
}