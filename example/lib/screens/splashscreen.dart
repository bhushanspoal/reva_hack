import 'package:arcore_flutter_plugin_example/screens/itemlistscreen.dart';

import 'package:arcore_flutter_plugin_example/screens/welcomescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
class MySplashScreen extends StatefulWidget {

  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(seconds: 8,
    navigateAfterSeconds: WelcomeScreen(),
    title: Text('intérieur',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.pink,
      fontSize: 20,
    ),
    ),
      image: Image.asset('items/icon.png'),
      backgroundColor: Colors.white,
      photoSize: 180,
      loaderColor: Colors.red,
      loadingText: Text('From Team TrojanHammers',
      style: TextStyle(
        color: Colors.pinkAccent,
        fontSize: 16,
      ),) ,
    );
   }
}
