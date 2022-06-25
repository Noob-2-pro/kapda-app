import 'package:flutter/material.dart';
import 'package:kapda/sizeConfig.dart';

const Color kPrimaryColor = Color(0xFFFF7643);
const Color kPrimaryLightColor = Color(0xFFFFECDF);
const Color kTextColor = Color(0xFF757575);
const Color kSecondryColor = Color(0xFF979797);
const kanimationDuration = Duration(milliseconds: 200);

const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFa53e), Color(0xff757575)],
);

final RegExp kemailValidatorRegExp = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-z]+');
const String kPhoneNoNullEroor = 'please enter Your phone Number';
const String kinvalidPhoneNoError = 'Phone Number is invalid';
const String kpassNullEroor = 'Please enter your password';
const String kshortPassEroor = 'password is too short,use min 8 characters';
const String kmatchPassEroor = 'password doesn\'t match';

final kOTPinputdecoration = InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
    enabledBorder: outlineInputBorder(),
    focusedBorder: outlineInputBorder(),
    border: outlineInputBorder());

OutlineInputBorder outlineInputBorder() =>
    OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide(color: kTextColor));
