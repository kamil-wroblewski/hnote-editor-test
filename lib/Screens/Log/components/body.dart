import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projekt/Screens/Log/components/background.dart';
import 'package:projekt/Screens/Main/main_screen.dart';
import 'package:projekt/Screens/Singup/sign_up_screen.dart';



import 'package:projekt/components/Circular_password_field.dart';
import 'package:projekt/components/account_check.dart';

import 'package:projekt/components/circular_button.dart';
import 'package:projekt/components/circular_input_field.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Zaloguj się",
              style: TextStyle(
                fontSize: 35,
                fontFamily: 'DancingScript',
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w300,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: SvgPicture.asset(
                "assets/images/login.svg",
                height: size.height * 0.3,
              ),
            ),
            CircularInputField(
              hintText: "Adres email",
              onChanged: (value) {},
            ),
            CircularPasswordField(
              text1: "Hasło",
              onChanged: (value) {},
            ),
            CircularButton(
              text: "Zaloguj się",
                press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Main();
                    },
                  ),
                );
              },
              color: primaryColor,
              textColor: Colors.white,
            ),
            AccountCheck(text1: "Nie masz konta? ", text2: "Zarejestruj się",
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
            ),
          ],
        ),
      ),
    );
  }
}
