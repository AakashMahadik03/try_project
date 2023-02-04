import 'package:ar_flutter_plugin/managers/ar_anchor_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_location_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_object_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_session_manager.dart';
import 'package:flutter/material.dart';
import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ARView(
        onARViewCreated: onARViewCreated,            // Do something when the AR view is created
        ),
      ),
    );
  }
}

void onARViewCreated(
    ARSessionManager arSessionManager,
    ARObjectManager arObjectManager,
    ARAnchorManager arAnchorManager,
    ARLocationManager arLocationManager) {
  // 1
  arSessionManager = arSessionManager;
  arObjectManager = arObjectManager;
  // 2
  arSessionManager.onInitialize(
    showFeaturePoints: false,
    showPlanes: true,
    customPlaneTexturePath: "triangle.png",
    showWorldOrigin: true,
    handleTaps: false,
  );
  // 3
}