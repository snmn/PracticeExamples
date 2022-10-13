
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart' as wv;

class WebView extends StatefulWidget{
  const WebView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return WebviewState();
  }
}
class WebviewState extends State<WebView>{

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height,
      width: size.width,
      child:  const wv.WebView(
        initialUrl: 'https://flutter.dev',

      ),
    );
  }

}