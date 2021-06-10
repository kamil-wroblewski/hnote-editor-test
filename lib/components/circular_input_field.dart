import 'package:flutter/material.dart';
import 'package:projekt/components/text_field_container.dart';

import '../constants.dart';


class CircularInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const CircularInputField({
    Key key, this.hintText, this.icon= Icons.person , this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
     child: TextField(
       onChanged: onChanged,
       style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
       decoration: InputDecoration(
         icon: Icon(icon, color: primaryColor),
         hintText: hintText,
         border: InputBorder.none,
         labelStyle: TextStyle(color: primaryColor),
         hintStyle: TextStyle(
           fontWeight: FontWeight.bold,
           color: Colors.white,
         ),
       ),
     ),
            );
  }
}