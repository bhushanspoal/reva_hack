import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as vector;
class ArViewScreen extends StatefulWidget {
String itemImg;
ArViewScreen({this.itemImg});

  @override
  _ArViewScreenState createState() => _ArViewScreenState();
}

class _ArViewScreenState extends State<ArViewScreen> {
  ArCoreController arCoreController;
  void whenArCoreViewCreated(ArCoreController controller){
    arCoreController= controller;
    arCoreController.onPlaneTap = controlOnPlaneTap;
  }
  void controlOnPlaneTap(List<ArCoreHitTestResult> results){
    final hit = results.first;
    addItemImagetoScene(hit);
  }
  Future addItemImagetoScene(ArCoreHitTestResult hitTestResult )async{
    var rootBundel;
    final bytes = (await rootBundel.load(widget.itemImg)).buffer.asUint8List();
    final imageItem= ArCodeNode(
      image: ArCoreImage(bytes: bytes, width: 600, height: 600,),
      position: hitTestResult.pose.translation+ vector.Vector3(0.0,0.0,0.0),
      rotation: hitTestResult.pose.rotation + vector.Vector4(0.0,0.0,0.0,0.0),
    );
    arCoreController.addArCoreNodeWithAnchor(imageItem);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ArCoreView(
            onArCoreViewCreated: whenArCoreViewCreated,
        enableTapRecognizer: true,

      ),
    );
  }

  ArCodeNode({ArCoreImage image, vector.Vector3 position, vector.Vector4 rotation}) {}
}
