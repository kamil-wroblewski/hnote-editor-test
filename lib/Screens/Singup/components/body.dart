import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projekt/Screens/Log/log_screen.dart';
import 'package:projekt/Screens/Singup/components/background.dart';
import 'package:projekt/components/Circular_password_field.dart';
import 'package:projekt/components/account_check.dart';
import 'package:projekt/components/circular_button.dart';
import 'package:projekt/components/circular_input_field.dart';
import 'package:projekt/src/util/user.dart';

import '../../../constants.dart';


class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String userName;
    String email;
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height:30,
            ),
            Text(
              "Zarejestruj się",
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
                "assets/images/signup.svg",
                height: size.height * 0.3,
              ),
            ),
            CircularInputField(
              hintText: "Nazwa użytkownika",
              onChanged: (value) {userName = value;},
            ),
            CircularInputField(icon: Icons.alternate_email,
              hintText: "Adres email",
              onChanged: (value) {email = value;},
            ),
            CircularPasswordField(
              text1: "Hasło",
              onChanged: (value) {},
            ),
            CircularPasswordField(
              text1: "Powtórz hasło",
              onChanged: (value) {},
            ),
            CircularButton(
              text: "Zarejestruj się",
              press: () { User u = new User(userName: userName, email: email, password: 'p');},
              color: primaryColor,
              textColor: Colors.white,
            ),
            AccountCheck(text1: "Masz juz konto? ", text2:"Zaloguj się",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Login();
                    },
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
