import 'package:flutter/material.dart';
class VideoPost extends StatefulWidget {
  const VideoPost({Key key}) : super(key: key);

  @override
  _VideoPostState createState() => _VideoPostState();
}

class _VideoPostState extends State<VideoPost> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Only Videos Tab"),
    );
  }
}
