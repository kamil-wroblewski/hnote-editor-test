

import 'package:flutter/material.dart';
import 'package:projekt/components/text_field_container.dart';

import '../constants.dart';


// ignore: must_be_immutable
class CircularPasswordField extends StatefulWidget {
  final String text1;
  final ValueChanged<String> onChanged;
  CircularPasswordField({
    Key key,
    this.onChanged, this.text1, 
  }) : super(key: key);

  @override
  _CircularPasswordFieldState createState() => _CircularPasswordFieldState();
}

class _CircularPasswordFieldState extends State<CircularPasswordField> {
  bool obscure=true;
  void obscurevoid()
  {
    setState(() {
      obscure=!obscure;
    });
  }
  @override
  Widget build(BuildContext context) {
    var textField = TextField(
        obscureText: obscure,
       // onChanged: onChanged,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          hintText: '${widget.text1}',
          hintStyle:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          icon: Icon(Icons.lock, color: primaryColor),
          suffixIcon: IconButton(icon: Icon(Icons.visibility), color: primaryColor, onPressed: obscurevoid),
          border: InputBorder.none,
        ),
      );
    return TextFieldContainer(
      child: textField,
    );
  }
}
