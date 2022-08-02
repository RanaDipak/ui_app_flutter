import 'package:flutter/material.dart ';
import 'package:flutter/services.dart';

import '../common/string_common.dart';

class SignUp extends StatefulWidget {
  const SignUp( {Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey<FormState> moFormKey = GlobalKey<FormState>();

  String msEmailPattern = StringCommon.msEmailPattern;
  String msNamePattern = StringCommon.msNamePattern;
  String msCompanyPattern = StringCommon.msCompanyPattern;

  final moUserNameController = TextEditingController();
  final moUserCompanyController = TextEditingController();
  final moUserEmailController = TextEditingController();

  String? validateName(value) {
    if (value!.isEmpty) {
      return StringCommon.msRequired;
    }
    return null;
  }

  String? validateCompany(value) {
    if (value!.isEmpty) {
      return StringCommon.msRequired;
    }
    return null;
  }

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
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.only(left: 35.0, right: 35.0, top: 10.0),
          child: Stack(
            children: [
              Positioned(
                child: Form(
                  key: moFormKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 2),
                        child: Column(
                          children: [
                            Text(
                              StringCommon.msSignup,
                              style: signupText(),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Text(
                              StringCommon.msSignupText,
                              style: signupDescription(),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        child: TextFormField(
                          inputFormatters: [
                            // only accept letters from a to z
                            FilteringTextInputFormatter(
                                RegExp(StringCommon.msNamePattern),
                                allow: true)
                          ],
                          controller: moUserNameController,
                          decoration: InputDecoration(
                              errorStyle: errorSignupText(),
                              hintText: StringCommon.msHintName,
                              hintStyle: labelSignupText(),
                              labelText: StringCommon.msLabelName),
                          keyboardType: TextInputType.text,
                          validator: validateName,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 3),
                        child: TextFormField(
                          inputFormatters: [
                            // only accept letters from a to z
                            FilteringTextInputFormatter(
                                RegExp(StringCommon.msCompanyPattern),
                                allow: true)
                          ],
                          controller: moUserCompanyController,
                          decoration: const InputDecoration(
                              errorStyle: TextStyle(color: Colors.black),
                              labelText: StringCommon.msLabelCompany),
                          keyboardType: TextInputType.text,
                          validator: validateCompany,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 3),
                        child: TextFormField(
                          controller: moUserEmailController,
                          decoration: const InputDecoration(
                              errorStyle: TextStyle(color: Colors.black),
                              labelText: StringCommon.msLabelEmail),
                          keyboardType: TextInputType.emailAddress,
                          validator: validateEmail,
                        ),
                      ),
                      Container(
                        width: double.infinity, // <-- match_parent
                        margin: const EdgeInsets.only(top: 80),
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
                            StringCommon.msSubmit,
                            style: submitText(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
