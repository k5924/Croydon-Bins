import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String kID = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String postcode = '';

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: const TextSpan(
            text: 'CROYDON ',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'BINS',
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: SafeArea(
        child: Builder(
          builder: (BuildContext context) {
            return const WebView(
              initialUrl:
                  'http://maps.croydon.gov.uk/aya/pages/aya/accessible/set-home.jsp?command=show&page=2',
            );
          },
        ),
      ),
    );
  }
}
