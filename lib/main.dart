import 'package:croydon_bins/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'screens/export.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      initialRoute: HomePage.kID,
      routes: {
        HomePage.kID: (context) => const HomePage(),
      },
    );
  }
}
