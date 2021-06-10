import 'package:flutter/material.dart';
import 'package:projekt/constants.dart';

class CircularButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const CircularButton({
    Key key, this.text, this.press, this.color= primaryColor, this.textColor,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5,),
      width: size.width *0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
                  child: FlatButton(
          onPressed: press,
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
          color: color,
          child: Text(text, style: TextStyle(color: textColor, fontWeight: FontWeight.bold,),),
        ),
      ),
    );
  }
}
