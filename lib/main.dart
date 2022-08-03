import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_app/Screen/demo.dart';
import 'package:ui_app/Screen/signin.dart';
import 'package:ui_app/Screen/signup.dart';
import 'common/ThemeColor.dart';
import 'common/string_common.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: Colors.deepOrangeAccent,
      //   bottomOpacity: 0.0,
      //   elevation: 0.0,
      //   title: Image.asset(
      //     "assets/images/person.jpg",
      //     width: 100,
      //     height: 100,
      //   ),
      //   // backgroundColor: Colors.white,
      //   // backgroundColor: const Color(0xff6ae792),
      // ),
      body: Container(
        constraints:  const BoxConstraints.expand(
          height: 200.0,
        ),
        // padding: const EdgeInsets.only(left: 0.0, bottom: 8.0, right: 16.0),
        decoration:  const BoxDecoration(
          color: Colors.blue,
        ),
        // width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Text(
                    StringCommon.msSignInMemberMainOne,
                    style: signupDescription(),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity, // <-- match_parent
              margin: const EdgeInsets.only(top: 5),
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignIn(),
                    )),
                style: buttonStyle(),
                child: Text(
                  StringCommon.msSignUp,
                  style: submitText(),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Text(
                    StringCommon.msSignInMemberMainTwo,
                    style: signupDescription(),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity, // <-- match_parent
              margin: const EdgeInsets.only(top: 5),
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Demo())),
                style: buttonStyle(),
                child: Text(
                  StringCommon.msSignIn,
                  style: submitText(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
