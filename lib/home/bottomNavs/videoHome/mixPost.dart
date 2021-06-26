import 'package:better_player/better_player.dart';
import 'package:better_player_issue_demo/home/bottomNavs/betterPlayerConfig.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MixPost extends StatefulWidget {
  MixPost({Key key}) : super(key: key);

  @override
  _MixPostState createState() => _MixPostState();
}

class _MixPostState extends State<MixPost> {
  //sample data int will decide post type 1 to 4=> image  and 2=> Videos
  Map<int, String> mixPostData = {};
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mixPostData[1] = "https://picsum.photos/id/10/2500/1667";
    mixPostData[2] =
        "https://i.picsum.photos/id/1000/5626/3635.jpg?hmac=qWh065Fr_M8Oa3sNsdDL8ngWXv2Jb-EE49ZIn6c0P-g";
    mixPostData[3] =
        "https://i.picsum.photos/id/609/1920/1080.jpg?hmac=dSvSFmVKsjYIw8RafSLXR-EIzO_opp4iumKu7BUrrok";
    mixPostData[4] =
        "https://i.picsum.photos/id/800/1920/1080.jpg?hmac=sqMVscBqq6SVSCIIbFHXUoGmglbd3BWF0M1LHtToR3o";

    mixPostData[5] =
        "https://www.pexels.com/video/6646568/download/?search_query=&tracking_id=bp02qv5absf";
    mixPostData[6] =
        "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4";
    mixPostData[7] =
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";
    setState(() {
          
        });
  }

  @override
  Widget build(BuildContext context) {
    print("===================MIX POST BUILT======================");
    return PageView.builder(
      itemCount: mixPostData.values.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        if (index < 4) {
          return Container(
            height: Get.height,
            width: Get.width,
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              height: Get.height,
              width: Get.width,
              imageUrl: mixPostData.values.elementAt(index),
            ),
          );
        } else {
          return BetterPlayer.network(
            mixPostData.values.elementAt(index),
            betterPlayerConfiguration: playerConfig(),
          );
        }
      },
    );
  }
}
