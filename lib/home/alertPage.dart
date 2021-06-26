import 'package:flutter/material.dart';
class AlertPage extends StatelessWidget {
  const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("===================ALRET PAGE BUILT======================");
    return Scaffold(
      body: Center(
        child: Text("Some Alert Page"),
      ),
    );
  }
}
