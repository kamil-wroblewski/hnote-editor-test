import 'package:flutter/material.dart';
import 'package:projekt/constants.dart';


class AccountCheck extends StatelessWidget {
  final Function press;
  final String text1, text2;
  const AccountCheck({
    Key key, this.press, this.text1, this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(text1),
        GestureDetector(
          onTap: press,
          child: Text(
            text2,
            style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
