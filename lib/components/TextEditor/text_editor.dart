import 'package:flutter/material.dart';
import 'package:projekt/constants.dart';

enum TextType { H1, T, QUOTE, BULLET, DASH }

extension TextEditorStyle on TextType{
  TextStyle get textStyle{
    switch (this){
      case TextType.QUOTE:
        return TextStyle(
          fontSize: QFontSize,
          fontStyle: FontStyle.italic,
          color: Colors.black
        );
      case TextType.H1:
        return TextStyle(
          fontSize: H1FontSize,
          fontWeight: FontWeight.bold
        );
        break;
      default:
        return TextStyle(fontSize: TFontSize);
    }
  }

  EdgeInsets get padding{
    switch(this){
      case TextType.H1:
        return EdgeInsets.fromLTRB(16,24,16,8);
        break;
      case TextType.BULLET:
        return EdgeInsets.fromLTRB(24, 8, 16, 8);
        break;
      case TextType.DASH:
        return EdgeInsets.fromLTRB(24, 8, 16, 8);
        break;
      default:
        return EdgeInsets.fromLTRB(16, 8, 16, 8);
    }
  }

  TextAlign get align{
    switch(this){
      case TextType.QUOTE:
        return TextAlign.center;
        break;
      default:
        return TextAlign.start;
    }
  }

  String get prefix{
    switch(this){
      case TextType.BULLET:
        return '\u2022 ';
        break;
      case TextType.DASH:
        return '\u002D ';
        break;
      default:

    }
  }
}

class TextEditorField extends StatelessWidget {
  const TextEditorField({Key key, this.type, this.controller, this.focusNode}) : super(key: key);

  final TextType type;
  final TextEditingController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      focusNode: focusNode,
      autofocus: true,
      keyboardType: TextInputType.multiline,
      maxLines: null,
      cursorColor: primaryColor,
      textAlign: type.align,
      decoration: InputDecoration(
        border: InputBorder.none,
        prefixText: type.prefix,
        prefixStyle: type.textStyle,
        isDense: true,
        contentPadding: type.padding
      ),
      style: type.textStyle
    );
  }
}

