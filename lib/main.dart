import 'package:better_player_issue_demo/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
ValueNotifier HOME_BOTTOM_NAV_VAL = ValueNotifier<int>(0);
ValueNotifier HOME_TITLE = ValueNotifier<String>('BetterPlayer');
void main(){
  runApp(BetterPlayerIssue());
}

class BetterPlayerIssue extends StatelessWidget {
  //THIS IS SAMPLE ISSUE THAT WE ARE FACING IN OUR APP FOR BETTER PLAYER NOT STOPPING
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'BetterPlayer Issue',
      themeMode: ThemeMode.light,
      enableLog: true,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
