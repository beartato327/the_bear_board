import "dart:io";

import "package:flutter/material.dart";

class TBBDeviceUtils{

  static bool isLandscapeOrientation(BuildContext context){
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }

  static bool isPortraitOrientation(BuildContext context){
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom != 0;
  }

  static double getScreenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }

  static double getScreenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }

  static bool isIOS(){
    return Platform.isIOS;
  }

  static bool isAndroid(){
    return Platform.isAndroid;
  }

  static void launchUrl(String url) async{
    if(await canLaunchUrlString(url)){
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}