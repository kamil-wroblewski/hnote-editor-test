import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:projekt/constants.dart';

import 'text_editor.dart';

class Toolbar extends StatelessWidget {
  const Toolbar({Key key, this.onSelected, this.selectedType}) : super(key: key);

  final TextType selectedType;
  final ValueChanged<TextType> onSelected;
  
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: Material(
          elevation: 4.0,
          color: Colors.grey[400],
          child: Row(
            children: <Widget>[
              IconButton(
                  onPressed: () => onSelected(TextType.H1),
                  icon: Icon(CommunityMaterialIcons.format_size,
                  color: selectedType == TextType.H1 ? primaryColor : Colors.black
                  ),
              ),
              IconButton(
                  onPressed: () => onSelected(TextType.BULLET),
                  icon: Icon(CommunityMaterialIcons.format_list_bulleted,
                  color: selectedType == TextType.BULLET ? primaryColor : Colors.black
                  ),
              ),
              IconButton(
                onPressed: () => onSelected(TextType.DASH),
                icon: Icon(Icons.list_sharp,
                    color: selectedType == TextType.DASH ? primaryColor : Colors.black
                ),
              ),
              IconButton(
                onPressed: () => onSelected(TextType.QUOTE),
                icon: Icon(CommunityMaterialIcons.format_quote_close,
                    color: selectedType == TextType.QUOTE ? primaryColor : Colors.black
                ),
              ),
            ],
          )
        ), 
    );
  }
}
