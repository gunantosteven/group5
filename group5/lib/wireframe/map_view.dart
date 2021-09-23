import 'package:flutter/material.dart';
import 'package:group5/wireframe/camera_view.dart';

class MapView extends StatefulWidget {
  const MapView({Key key}) : super(key: key);

  @override
  _MapViewState createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => CameraView()),
        );
      },
      child: Image.asset(
        "images/map.jpg",
        fit: BoxFit.fill,
      ),
    );
  }
}
