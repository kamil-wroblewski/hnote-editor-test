import 'package:flutter/material.dart';
import 'package:projekt/Screens/Notes/components/note.dart';
import 'package:provider/provider.dart';

import 'statemanager.dart';
import 'text_editor.dart';
import 'toolbar.dart';

class TextEditorScreen extends StatefulWidget {
  const TextEditorScreen({Key key}) : super(key: key);

  @override
  _TextEditorScreenState createState() => _TextEditorScreenState();
}

class _TextEditorScreenState extends State<TextEditorScreen> {

  Note note;

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context).settings.arguments as Map;
    note = data['note'];

    return ChangeNotifierProvider<EditorProvider>(
      create: (context) => EditorProvider(note: note),
      builder: (context, child){
        return SafeArea(
          child: Scaffold(
            body: Stack(
              children: <Widget>[
                Positioned(
                  top: 16,
                  left: 0,
                  right: 0,
                  bottom: 56,
                  child: Consumer<EditorProvider>(
                    builder: (context, state, _){
                      return ListView.builder(
                        itemCount: state.length,
                        itemBuilder: (context, index){
                          return Focus(
                            onFocusChange: (hasFocus){
                              if(hasFocus) state.setFocus(state.typeAt(index));
                            },
                            child: TextEditorField(
                              type: state.typeAt(index),
                              controller: state.textAt(index),
                              focusNode: state.nodeAt(index),
                            ),
                          );
                        },
                      );
                    }
                  ),
                ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Selector<EditorProvider, TextType>(
                    selector: (buildContext, state) => state.selectedType,
                    builder: (context, selectedType, _){
                      return Toolbar(
                        selectedType: selectedType,
                        onSelected: Provider.of<EditorProvider>(context,
                        listen: false).setType,
                      );
                    }
                  )
                ),
              ],
            )
          ),
        );
      },
    );
  }
}
