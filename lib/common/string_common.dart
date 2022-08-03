import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../common/ThemeColor.dart';

class StringCommon {
  static const String msRequired = "Required";
  static const String msInvalid = "Invalid";
  static const String msSignup = "Sign Up";
  static const String msSignupText = "Let's complete your profile";
  static const String msSignInMemberMainOne = "Are you a BIVDA member?";
  static const String msSignInMemberMainTwo = "Not Member yet?";
  static const String msSignInText = "Sign in to your account";
  static const String msSignInNotMember = "Not a member yet? ";
  static const String msSignInSignUp = "Sign Up ";
  static const String msSignInDescription =
      "Enter your E-mail address below and we will send you a ONE TIME CODE to gain access";
  static const String msLabelName = "First Name*";
  static const String msSignInLabelName = "Email";
  static const String msHintName = "John Doe";
  static const String msSignInHintName = "john.doe@dummy.com";
  static const String msLabelCompany = "Company Name*";
  static const String msLabelEmail = "Email Address*";
  static const String msSubmit = "Submit";
  static const String msContinue = "Continue";
  static const String msSignUp = "Sign In Here";
  static const String msSignIn = "Join Us";
  static const String msEmailPattern =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  static const String msNamePattern = r'[a-zA-Z ]';
  static const String msCompanyPattern = r'[a-zA-Z0-9 ]';
}

TextStyle signupText() {
  return const TextStyle(
      fontSize: 23.0, fontWeight: FontWeight.bold, color: ThemeColor.black);
}

TextStyle errorSignupText() {
  return const TextStyle(color: ThemeColor.black);
}

TextStyle labelSignupText() {
  return const TextStyle(color: Colors.black, fontWeight: FontWeight.w400);
}

TextStyle signupDescription() {
  return const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300);
}

TextStyle signInDescription() {
  return const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300);
}

TextStyle signInSignUpButton() {
  return const TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w800,
    color: ThemeColor.submitText,
    decoration: TextDecoration.underline,
  );
}

// SizedBox boxHeight10() {
//   return const SizedBox(
//     height: 10,
//   );
// }
//
// SizedBox boxHeight20() {
//   return const SizedBox(
//     height: 20,
//   );
// }
//
// SizedBox boxHeight200() {
//   return const SizedBox(
//     height: 220,
//   );
// }

ButtonStyle buttonStyle() {
  return ElevatedButton.styleFrom(
    primary: ThemeColor.submitText,
    elevation: 3,
    minimumSize: const Size(155, 35),
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

TextStyle signInText() {
  return const TextStyle(
      fontSize: 20.0, color: ThemeColor.black, fontWeight: FontWeight.bold);
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
