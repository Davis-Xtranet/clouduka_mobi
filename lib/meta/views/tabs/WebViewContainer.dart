import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:swipedetector/swipedetector.dart';
// import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget {
  const WebViewContainer({Key key}) : super(key: key);

  @override
  _WebViewContainerState createState() => _WebViewContainerState();
}

class _WebViewContainerState extends State<WebViewContainer> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  final flutterWebViewPlugin = new FlutterWebviewPlugin();
   DateTime currentBackPressTime;
  Future<bool> onWillPop() {
    flutterWebViewPlugin.canGoBack().then((value) {
      if (value) {
        flutterWebViewPlugin.goBack();
      } else {


        if (Platform.isAndroid) {
          SystemNavigator.pop();
        } else if (Platform.isIOS) {
          exit(0);
        }
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: onWillPop,
        child: SwipeDetector(
          onSwipeDown: ()=>flutterWebViewPlugin.reload(),
          swipeConfiguration: SwipeConfiguration(
              verticalSwipeMinVelocity: 100.0,
              verticalSwipeMinDisplacement: 50.0,
              verticalSwipeMaxWidthThreshold: 100.0,
              horizontalSwipeMaxHeightThreshold: 50.0,
              horizontalSwipeMinDisplacement: 50.0,
              horizontalSwipeMinVelocity: 200.0),
          child: WebviewScaffold(
            url: "https://clouduka.co.ke/clouduka-shops",
            withJavascript: true,
            withZoom: false,
          // hidden: false ,

          // return Scaffold(
          //   body: SafeArea(
          //     child: Column(
          //       children: [
          //         Expanded(
          //             child: RefreshIndicator(
          //               onRefresh: ,
          //               child: WebView(
          //                   //key: _key,
          //                   javascriptMode: JavascriptMode.unrestricted,
          //                   initialUrl: "https://clouduka.co.ke/clouduka-shops"),
          //             ))
          //       ],
          //     ),
          //   )
          ),
        ),
      ),
    );
  }
}
