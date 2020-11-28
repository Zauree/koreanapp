import 'package:flutter/material.dart';
import 'package:korean_app/Screens/Login/login_screen.dart';
import 'package:korean_app/Screens/SignUp/components/background.dart';

import 'package:korean_app/components/account_exists.dart';
import 'package:korean_app/components/rounded_button.dart';
import 'package:korean_app/components/rounded_input_field.dart';
import 'package:korean_app/components/rounded_input_field_name.dart';
import 'package:korean_app/components/rounded_password_field.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/icons/registration.jpg",
              height: size.height * 0.35,
            ),
            RoundedInputFieldName(
              hintText: "Full Name",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AccountExists(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
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