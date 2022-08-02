import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../common/ThemeColor.dart';

class StringCommon {
  static const String msRequired = "Required";
  static const String msInvalid = "Invalid";
  static const String msSignup = "Sign Up";
  static const String msSignupText = "Let's complete your profile";
  static const String msLabelName = "First Name*";
  static const String msHintName = "John Doe";
  static const String msLabelCompany = "Company Name*";
  static const String msLabelEmail = "Email Address*";
  static const String msSubmit = "Submit";
  static const String msSignUp = "SignUp";
  static const String msSignIn = "SignIn";
  static const String msEmailPattern =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    static const String msNamePattern = r'[a-zA-Z ]';
  static const String msCompanyPattern = r'[a-zA-Z0-9 ]';
}

TextStyle signupText() {
  return const TextStyle(
      fontSize: 23.0, fontWeight: FontWeight.bold, color: ThemeColor.offBlack);
}

TextStyle errorSignupText() {
  return const TextStyle(color: ThemeColor.offBlack);
}

TextStyle labelSignupText() {
  return const TextStyle(color: Colors.black, fontWeight: FontWeight.w400);
}

TextStyle signupDescription() {
  return const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300);
}

SizedBox boxHeight10() {
  return const SizedBox(
    height: 10,
  );
}

SizedBox boxHeight20() {
  return const SizedBox(
    height: 20,
  );
}

SizedBox boxHeight200() {
  return const SizedBox(
    height: 220,
  );
}

ButtonStyle buttonStyle() {
  return ElevatedButton.styleFrom(
    primary: ThemeColor.submitText,
      elevation: 3,
      minimumSize: Size(120, 30),
    // shape: Border()
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0.0),
    ),
  );
}

TextStyle submitText() {
  return const TextStyle(
      fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.normal);
}

// TextStyle first() {
//   return const TextStyle(
//     color: ThemeColor.darkRed,
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w600,
//     fontSize: 40.0,
//   );
// }

// TextStyle second() {
//   return const TextStyle(
//     color: ThemeColor.amber,
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w600,
//     fontSize: 40.0,
//   );
// }

// TextStyle third() {
//   return const TextStyle(
//     color: ThemeColor.green1,
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w600,
//     fontSize: 40.0,
//   );
// }
