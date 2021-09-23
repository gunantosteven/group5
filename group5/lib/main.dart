import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:group5/home_page.dart';

List<CameraDescription> cameras;
CameraController controller;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    title: 'Animal Nearby',
    home: HomePage(),
  ));
}

Future<void> initCamera() async {
  cameras = await availableCameras();
  controller = CameraController(cameras[0], ResolutionPreset.max);
  controller.initialize().then((_) {

  });

}

