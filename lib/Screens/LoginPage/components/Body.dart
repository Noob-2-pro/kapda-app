import 'package:flutter/material.dart';
import 'package:kapda/Screens/Forget_Screen/forgetscreen.dart';
import 'package:kapda/components/NoaccountSignup.dart';
import 'package:kapda/components/socialMedia.dart';
import 'package:kapda/constants.dart';
import 'package:kapda/sizeConfig.dart';

import 'SignForm.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: getProportionateScreenHeight(40),
          ),
          Text(
            'Welcome Back',
            style:
                TextStyle(color: Colors.black, fontSize: getProportionateScreenWidth(30), fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Text(
            'Sign in with email Id and Password \n or continue with Social Media ',
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: getProportionateScreenHeight(80),
          ),
          SignForm(),
          Row(
            children: [
              Checkbox(
                value: rememberMe,
                onChanged: (checkvalue) {
                  setState(() {
                    rememberMe = !rememberMe;
                  });
                },
                activeColor: kPrimaryColor,
              ),
              Text('Remember Me'),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, ForgetScreen.routeName);
                },
                child: Text(
                  'Forget Password',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(60),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialMediaIcon(
                icon: 'assets/icons/google-icon.svg',
              ),
              SocialMediaIcon(
                icon: 'assets/icons/facebook-2.svg',
              ),
              SocialMediaIcon(
                icon: 'assets/icons/twitter.svg',
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          NoAccountSignup()
        ],
      ),
    ));
  }
}
