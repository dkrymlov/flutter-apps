
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatelessWidget{

  static const String URL = "https://alerts.in.ua/";

  const WebViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alarm in UA"),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () async {},
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: () async {},
          ),
          IconButton(
            icon: const Icon(Icons.replay),
            onPressed: () async {},
          ),
        ],
      ),
      body: const WebView(
        initialUrl: URL,
        zoomEnabled: true,
        javascriptMode: JavascriptMode.unrestricted,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.next_plan, size: 32),
        onPressed: () async {},
      ),
    );
  }

}
