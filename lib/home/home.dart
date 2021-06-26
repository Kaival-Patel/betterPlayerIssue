import 'package:better_player_issue_demo/home/addPage.dar.dart';
import 'package:better_player_issue_demo/home/bottomNavs/profile.dart';
import 'package:better_player_issue_demo/home/bottomNavs/videoHome/postHome.dart';
import 'package:flutter/material.dart';
import 'package:better_player_issue_demo/main.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> views = [
    PostHome(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: bottomNavBar(),
        body: ValueListenableBuilder(
          valueListenable: HOME_BOTTOM_NAV_VAL,
          builder: (BuildContext context, dynamic value, Widget child) {
            return views[value];
          },
        ),
      ),
    );
  }

  bottomNavBar() {
    return ValueListenableBuilder(
      valueListenable: HOME_BOTTOM_NAV_VAL,
      builder: (BuildContext context, dynamic value, Widget child) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: _bottomNavItems(),
          backgroundColor: Get.theme.canvasColor,
          currentIndex: value,
          onTap: (index) {
            changeIndex(index);
          },
          iconSize: 30,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        );
      },
    );
  }

  _bottomNavItems() {
    return [
      BottomNavigationBarItem(
          icon: Icon(Icons.tv),
          activeIcon: Icon(Icons.tv, color: Colors.blue),
          label: "Home"),
      BottomNavigationBarItem(
          icon: Icon(Icons.person),
          activeIcon: Icon(Icons.person, color: Colors.blue),
          label: "Profile"),
      BottomNavigationBarItem(
          icon: Icon(Icons.add_alarm_outlined),
          activeIcon: Icon(Icons.add_alarm_sharp, color: Colors.blue),
          label: "Alarm"),
    ];
  }

  void changeIndex(int index) async {
    if(index ==2){
      Get.to(()=>AddPage());
    }
    else{
      HOME_BOTTOM_NAV_VAL.value = index;
    }
    
  }
}
