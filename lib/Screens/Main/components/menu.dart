import 'package:flutter/material.dart';
import 'package:projekt/Screens/Main/components/menuoption.dart';
import 'package:projekt/Screens/Main/components/userinfo.dart';
import 'package:projekt/constants.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      color: primaryColor,
      child: Padding(
        padding: EdgeInsets.only(top: size.height/15, left: size.width/12, bottom: size.height/10),
        child: Column(
          children: <Widget>[
            UserInfo(name: 'Paweł Wójcik', image: 'assets/images/user.png',),
            SizedBox(
              height: size.height/20,
            ),
            MenuOption(text: 'Ustawienia',icon: Icons.settings,),
                  MenuOption(text: 'Konto',icon: Icons.account_circle_outlined ,),
                        MenuOption(text: 'Stwórz plan lekcji',icon: Icons.table_chart_outlined,),
                              MenuOption(text: 'Utwórz wydarzenie',icon: Icons.event,),
              SizedBox(
                height: size.height/20,
              )            ,
              MenuOption(text: 'Wyloguj się',icon: Icons.event,),
          ],
        ),
      ),
    );
  }
}

