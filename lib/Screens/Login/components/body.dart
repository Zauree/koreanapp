import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:korean_app/Screens/Login/components/background.dart';
import 'package:korean_app/Screens/SignUp/components/signup_screen.dart';
import 'package:korean_app/components/account_exists.dart';
import 'package:korean_app/components/rounded_button.dart';
import 'package:korean_app/components/rounded_input_field.dart';
import 'package:korean_app/components/rounded_password_field.dart';
import 'package:korean_app/constants.dart';
class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          SizedBox(height: size.height * 0.03),
          Image.asset("assets/icons/login.jpg",
            height: size.height * 0.35,
          ),
          SizedBox(height: size.height * 0.03),
          RoundedInputField(
            hintText: "Email",
            onChanged: (value){},
          ),
          RoundedPasswordField(
            onChanged: (value){},
          ),
          RoundedButton(
            text: "SIGNIN",
            press: (){},
          ),
          SizedBox(height: size.height * 0.03),
          AccountExists(
            press: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context){
                  return SignUpScreen();
              })
              );
            },
          )

        ],
      )
    );
  }
}
