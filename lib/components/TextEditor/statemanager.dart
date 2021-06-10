import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projekt/Screens/Notes/components/note.dart';

import 'text_editor.dart';

class EditorProvider extends ChangeNotifier{
  TextType selectedType;

  List<FocusNode> _nodes = [];
  List<TextEditingController> _text = [];
  List<TextType> _types = [];

  Note note;

  EditorProvider({TextType defaultType = TextType.T, Note note}) {
    selectedType = defaultType;
    this.note = note;
    //print(note.text.length);
    insert(index: 0);
  }


  int get length => _text.length;
  int get focus => _nodes.indexWhere((node) => node.hasFocus);

  FocusNode nodeAt(int index) => _nodes.elementAt(index);
  TextEditingController textAt(int index) => _text.elementAt(index);
  TextType typeAt(int index) => _types.elementAt(index);

  void setType(TextType type){
    if(selectedType == type){
      selectedType = TextType.T;
    }else{
      selectedType = type;
    }

    _types.removeAt(focus);
    _types.insert(focus, selectedType);
    notifyListeners();
  }

  void setFocus(TextType type){
    selectedType = type;
    notifyListeners();
  }

  void insert({int index, String text, TextType type = TextType.T}){

    final TextEditingController controller = TextEditingController(
      text: '\u200B' + (text?? '')
    );

    controller.addListener(() {
      if(!controller.text.startsWith('\u200B')){
        final int index = _text.indexOf(controller);
        print(_text.indexOf(controller));
        if(index > 0){
          textAt(index-1).text += controller.text;
          textAt(index-1).selection = TextSelection.fromPosition(TextPosition(
            offset: textAt(index-1).text.length - controller.text.length
          ));
          nodeAt(index-1).requestFocus();
          _text.removeAt(index);
          _nodes.removeAt(index);
          _types.removeAt(index);
          notifyListeners();
        }
      }

      if(controller.text.contains('\n')){
        final int index = _text.indexOf(controller);
        List<String> _split = controller.text.split('\n');
        controller.text = _split.first;
        insert(
          index: index+1,
          text: _split.last,
          type: typeAt(index) == TextType.BULLET ? TextType.BULLET : (typeAt(index) == TextType.DASH ? TextType.DASH : TextType.T)
        );
        textAt(index+1).selection = TextSelection.fromPosition(
          TextPosition(offset: 1)
        );
        nodeAt(index+1).requestFocus();
        notifyListeners();
      }
    });
    _text.insert(index, controller);
    _types.insert(index, type);
    _nodes.insert(index, FocusNode());

  }

}