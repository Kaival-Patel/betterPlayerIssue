import 'package:better_player_issue_demo/home/addPage.dar.dart';
import 'package:better_player_issue_demo/home/alertPage.dart';
import 'package:better_player_issue_demo/home/bottomNavs/videoHome/mixPost.dart';
import 'package:better_player_issue_demo/home/bottomNavs/videoHome/onlyVideoPost.dart';
import 'package:better_player_issue_demo/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';
class PostHome extends StatefulWidget {
  PostHome({Key key}) : super(key: key);

  @override
  _PostHomeState createState() => _PostHomeState();
}

class _PostHomeState extends State<PostHome> {
  List<Widget> tabs = [
    MixPost(),
    VideoPost(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading:
        Builder(
          builder: (context) => Center(
            child: GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Icon(Icons.drag_handle_outlined, color: Colors.white)
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Column(
          children: [
            Text(
              "Video",
              style: Get.textTheme.headline6,
            ),
            ValueListenableBuilder(
              valueListenable: HOME_TITLE,
              builder: (BuildContext context, dynamic value, Widget child) {
                return Visibility(
                  visible: value.toString() != "Home",
                  child: Text(value.toString(),
                      style: Get.textTheme.bodyText1
                          .copyWith(color: Colors.grey)),
                );
              },
            ),
          ],
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              onPressed: () {
                Get.to(()=>AlertPage());
              })
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.add),
              title: Text("Some Page"),
              subtitle: Text("We will navigate with Get.to"),
              onTap: (){
                Get.to(()=>AddPage());
              },
            )
          ],
        ),
      ),
      body:Swiper(
          itemCount: tabs.length,
          autoplay: false,
          loop: false,
          itemBuilder: (context, index) {
            return tabs[index];
          }),
    );
  }
}
