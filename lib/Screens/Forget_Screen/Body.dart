import 'package:flutter/material.dart';
import 'package:kapda/components/CustomsvgImage.dart';
import 'package:kapda/components/DefaultButton.dart';
import 'package:kapda/components/NoaccountSignup.dart';
import 'package:kapda/components/formStateErrors.dart';
import 'package:kapda/size_config.dart';

import '../../constants.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formkey = GlobalKey<FormState>();
  List<String> errors = [];
  String email;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.04, width: SizeConfig.screenWidth),
          Text('Forget Password',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: getProportionateScreenWidth(30),
              )),
          SizedBox(height: getProportionateScreenHeight(10)),
          const Text(
            'Please enter your email address\n we will send a link to reset your password',
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.12,
          ),
          Form(key: _formkey, child: emailTextFormField()),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          FormStateError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          Defaultbutton(
            text: 'Send Link',
            onpressed: () {
              if (_formkey.currentState.validate()) {
                _formkey.currentState.save();
              }
            },
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.2,
          ),
          NoAccountSignup(),
        ],
      ),
    );
  }

  TextFormField emailTextFormField() {
    return TextFormField(
        onSaved: (value) {
          email = value;
          print(email);
        },
        validator: (value) {
          if (value.isEmpty && !errors.contains(kPhoneNoNullEroor)) {
            setState(() {
              errors.add(kPhoneNoNullEroor);
            });
          } else if (!kemailValidatorRegExp.hasMatch(value) && !errors.contains(kinvalidPhoneNoError)) {
            setState(() {
              errors.add(kinvalidPhoneNoError);
            });
          }
          return null;
        },
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(kPhoneNoNullEroor)) {
            setState(() {
              errors.remove(kPhoneNoNullEroor);
            });
          } else if (kemailValidatorRegExp.hasMatch(value) && errors.contains(kinvalidPhoneNoError)) {
            setState(() {
              errors.remove(kinvalidPhoneNoError);
            });
          }
          return null;
        },
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
          hintText: 'Enter your email',
          labelText: 'Email',
          suffixIcon: SvgImage('assets/icons/Mail.svg'),
        ));
  }
}
