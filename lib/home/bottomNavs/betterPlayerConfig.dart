import 'package:better_player/better_player.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

BetterPlayerControlsConfiguration betterPlayerControlsConfiguration() {
  return BetterPlayerControlsConfiguration(
    showControlsOnInitialize: true,
    showControls: true,
    controlBarHeight: 10,
    backgroundColor: Get.theme.scaffoldBackgroundColor,
    controlBarColor: Colors.transparent,
    iconsColor:Colors.transparent,
    enablePip: false,
    progressBarPlayedColor: Colors.grey,
    controlsHideTime: Duration(seconds: 3),
    enableProgressBar: true,
    progressBarBufferedColor: Get.theme.accentColor.withOpacity(0.3),
    progressBarBackgroundColor: Colors.grey,
    enableFullscreen: false,
    enableMute: false,
    enablePlayPause: true,

    enablePlaybackSpeed: false,
    enableSkips: false,
    loadingColor: Get.theme.accentColor,
    enableRetry: true,
  );
}
BetterPlayerConfiguration playerConfig() {
  return BetterPlayerConfiguration(
    looping: true,
    allowedScreenSleep: false,
    autoDispose: true,
    autoPlay: true,

    fullScreenAspectRatio: Get.size.aspectRatio,
    aspectRatio: Get.size.aspectRatio,
    controlsConfiguration: betterPlayerControlsConfiguration(),
    errorBuilder: (context, errorMessage) => Container(
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Icon(Icons.error_outline_rounded,color: Colors.red,),
          ),
          Text("Something went wrong")
        ],
      ),
    ),
    fit: BoxFit.cover,

    handleLifecycle: true,
  );
}