import 'package:flutter/material.dart';
import 'package:group5/wireframe/form1_view.dart';

class CameraView extends StatefulWidget {
  const CameraView({Key key}) : super(key: key);

  @override
  _CameraViewState createState() => _CameraViewState();
}

class _CameraViewState extends State<CameraView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Form1View()),
        );
      },
      child: Image.asset(
        "images/camera.jpg",
        fit: BoxFit.fill,
      ),
    );
  }
}
