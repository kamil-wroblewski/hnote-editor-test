import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:projekt/Screens/Main/components/tilesrow.dart';
import 'package:projekt/constants.dart';

class UI extends StatefulWidget {
  @override
  _UI createState() => _UI();
}

class _UI extends State<UI> {
  double x = 0;
  double y = 0;

  bool isMenuOpen = false;

  @override
  Widget build(BuildContext context) {


    return AnimatedContainer(
      transform: Matrix4.translationValues(x, y, 0)
        ..scale(isMenuOpen ? 0.85 : 1.00)
        ..rotateZ(isMenuOpen ? -50 : 0),
      duration: Duration(milliseconds: 200),
      decoration: BoxDecoration(
         color: Colors.white,
        borderRadius: isMenuOpen ? BorderRadius.circular(40) : BorderRadius.circular(0),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            
            SizedBox(
              height: 50,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                     isMenuOpen ? GestureDetector(
                        child: Icon(Icons.arrow_back),
                        onTap: () {
                          setState(() {
                            x=0;
                            y=0;
                            isMenuOpen=false;
                          });
                        },
                      ) : 
                      GestureDetector(
                        child: Icon(Icons.menu),
                        onTap: () {
                          setState(() {
                          
                            x=290;
                            y=150;
                            isMenuOpen=true;
                          });
                        },
                      ),
                      Text(title,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0,
                              color: Colors.black87,
                              decoration: TextDecoration.none)),
                      Container(),
                    ])),
            SizedBox(
              height: 30,
            ),
            Column(
              children: <Widget>[
                TilesRow(
                  image1: 'assets/uitiles/handwritten_note.png',
                  text1: 'Notatki',
                  url1: '/notebooks',
                  image2: 'assets/uitiles/chat.png',
                  text2: 'Czat',
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: <Widget>[
                TilesRow(
                  image1: 'assets/uitiles/timetable.png',
                  text1: 'Plan lekcji',
                  image2: 'assets/uitiles/calendar.png',
                  text2: 'Kalendarz',
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: <Widget>[
                TilesRow(
                  image1: 'assets/uitiles/cloud.png',
                  text1: 'Dysk',
                  image2: 'assets/uitiles/note.png',
                  text2: 'Mapy mysli',
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
