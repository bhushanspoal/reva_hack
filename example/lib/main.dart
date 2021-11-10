import 'package:flutter/material.dart';
import 'app.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart'
    show ArCoreController;

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();

  print('ARCORE IS AVAILABLE?');
  print(await ArCoreController.checkArCoreAvailability());   //checking if the device supports the ar core

  print('\nAR SERVICES INSTALLED?');
  print(await ArCoreController.checkIsArCoreInstalled());

  runApp(
      App(
      ),
  );
}



