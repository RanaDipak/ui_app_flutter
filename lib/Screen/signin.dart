import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_app/Screen/signup.dart';

import '../common/ThemeColor.dart';
import '../common/string_common.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  GlobalKey<FormState> moFormKey = GlobalKey<FormState>();

  String msEmailPattern = StringCommon.msEmailPattern;
  final moUserEmailController = TextEditingController();

  String? validateEmail(value) {
    if (value!.isEmpty) {
      return StringCommon.msRequired;
    } else if (!RegExp(msEmailPattern).hasMatch(value)) {
      return StringCommon.msInvalid;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Image.asset(
          "assets/images/person.jpg",
          width: 100,
          height: 100,
        ),
        // backgroundColor: Colors.white,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context, true);
            }),
        // backgroundColor: const Color(0xff6ae792),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(left: 35.0, right: 35.0, top: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 2),
                child: Column(
                  children: [
                    Text(
                      StringCommon.msSignInText,
                      style: signInText(),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Text(
                      StringCommon.msSignInDescription,
                      style: signInDescription(),
                    )
                  ],
                ),
              ),
              Form(
                key: moFormKey,
                child: Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    margin: const EdgeInsets.only(top: 20),
                    color: ThemeColor.moEmailBackgroundSignIn,
                    child: Container(
                      padding: const EdgeInsets.only(left: 12),
                      child: TextFormField(
                        controller: moUserEmailController,
                        decoration: InputDecoration(
                            errorStyle: errorSignupText(),
                            // hintText: StringCommon.msSignInHintName,
                            // hintStyle: labelSignupText(),
                            labelText: StringCommon.msSignInLabelName),
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.send,
                        validator: validateEmail,
                        onEditingComplete: () => {
                          if (moFormKey.currentState!.validate())
                            {debugPrint("No Error")}
                          else
                            {debugPrint("Error")}
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity, // <-- match_parent
                margin: const EdgeInsets.only(top: 40),
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () => {
                    if (moFormKey.currentState!.validate())
                      {debugPrint("No Error")}
                    else
                      {debugPrint("Error")}
                  },
                  style: buttonStyle(),
                  child: Text(
                    StringCommon.msContinue,
                    style: submitText(),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: Column(
                          children: [
                            Text(
                              StringCommon.msSignInNotMember,
                              style: signInDescription(),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            top: 10.0, bottom: 10.0, left: 10.0),
                        child: Column(
                          children: [
                            GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const SignUp())),
                                child: Text(
                                  StringCommon.msSignInSignUp,
                                  style: signInSignUpButton(),
                                )),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
