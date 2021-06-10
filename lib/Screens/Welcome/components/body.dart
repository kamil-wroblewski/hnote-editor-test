import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projekt/Screens/Log/log_screen.dart';
import 'package:projekt/Screens/Singup/sign_up_screen.dart';
import 'package:projekt/Screens/Welcome/components/background.dart';
import 'package:projekt/constants.dart';

import 'package:projekt/components/circular_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
              child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "HNote",
              style: TextStyle( fontSize: 50, fontFamily: 'DancingScript', fontStyle: FontStyle.italic, fontWeight: FontWeight.w300,),
              
            ),
            Container(
               margin: EdgeInsets.only(top: 40, bottom: 60),
               
                        child: SvgPicture.asset(
                "assets/images/welcome.svg",
                height: size.height * 0.3,
              ),
            ),
            CircularButton(
              text: "Zaloguj się",
              press: () {Navigator.push(context, MaterialPageRoute(builder: (context){return Login();},),);},
              textColor: Colors.white,
              ),
             CircularButton(
               text: "Zarejestruj się", 
                press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Signup();
                    },
                  ),
                );
              },
               color: primaryLightColor, 
               textColor: Colors.black,
               ),
          ],
        ),
      ),
    );
  }
}

