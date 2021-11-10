import 'package:arcore_flutter_plugin_example/screens/splashscreen.dart';
import 'package:flutter/material.dart';


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//where to go
      home: MySplashScreen(),
    );
  }
}