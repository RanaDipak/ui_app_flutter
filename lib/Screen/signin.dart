import 'package:flutter/material.dart';

import '../common/string_common.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
      body: Container(
        width: double.infinity, // <-- match_parent
        margin: const EdgeInsets.only(top: 80),
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () => {},
          style: buttonStyle(),
          child: Text(
            StringCommon.msSubmit,
            style: submitText(),
          ),
        ),
      ),
    );
  }
}
