import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.black,
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme: TextTheme(
              headline6: TextStyle(color: Colors.black, fontFamily: "Aveny")),
          textTheme: TextTheme(headline6: TextStyle(color: Colors.black))),
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      loaderColor: Colors.black,
      image: Image.network("https://pbs.twimg.com/media/ELXVahIU4AA_ZT3.jpg"),
      photoSize: 200.0,
      navigateAfterSeconds: Home(),
    );
  }
}
