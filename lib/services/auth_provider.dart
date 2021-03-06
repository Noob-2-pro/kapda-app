import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kapda/modals/ApiModels/user_modal.dart';
import '../Screens/OTP_Screen/OTPScreen.dart';
import 'gsheets.dart';

class AuthProvider extends ChangeNotifier {
  String _phoneNumber;
  String errorText = '';
  String verificationid = '';
  final _auth = FirebaseAuth.instance;
  UserData user;

  String get phoneNumber => _phoneNumber;

  set updatePhoneNumber(String number) {
    _phoneNumber = number;
  }

  Future sendOtpToPhone({BuildContext context}) async {
    await _auth
        .verifyPhoneNumber(
      phoneNumber: '+91$phoneNumber',
      verificationCompleted: (PhoneAuthCredential credential) async {
        print(credential);
        // if (Platform.isAndroid) {
        //   await _auth.signInWithCredential(credential);
        //   Navigator.pushNamed(context, OTPscreen.routeName);
        // }
      },
      verificationFailed: (FirebaseAuthException e) {
        log("error aa gya h verification me");
        errorText = e.toString();
        notifyListeners();
      },
      codeSent: (String verificationId, int resendToken) {
        verificationid = verificationId;
        errorText = "";
        notifyListeners();
        Navigator.pushNamed(context, OTPscreen.routeName);
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    )
        .onError((error, stackTrace) {
      log("error aa gya h send otp me");
      errorText = error.toString();
      notifyListeners();
    });
  }

  Future saveUserToDataBase() async {
    final userData = user.tojson();
    await GSheetsApi.insert(userData);
  }

  Future<bool> checkUser() async {
    bool exist = await GSheetsApi.checkUser(phoneNumber: _phoneNumber);
    if (!exist) {
      errorText = 'user doesn\'t exist , please sign up first';
      notifyListeners();
    }
    return exist;
  }

  Future initUser({@required String id}) async {
    user = await GSheetsApi.getUser(id);
  }

  updateErrorText(String eText) {
    errorText = eText;
    notifyListeners();
  }
}
