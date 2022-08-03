import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.shortestSide,
              // width: double.infinity,
              color: Colors.blue,
            ),
            Card(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.width*0.8, left: 20, right: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("Welcome to the BIVDA App")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
