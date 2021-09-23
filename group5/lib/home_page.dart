import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:group5/add_animal.dart';
import 'package:group5/animal_marker.dart';
import 'package:group5/constants.dart';

import 'package:group5/service.dart';
import 'package:group5/wireframe/camera_view.dart';
import 'package:group5/wireframe/explore_view.dart';
import 'package:group5/wireframe/filter_view.dart';
import 'package:latlong/latlong.dart';

import 'animal.dart';

String mapboxUrl =
    'https://api.mapbox.com/styles/v1/sharmilita/cktwjprp20u6k18s54h9g410r/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoic2hhcm1pbGl0YSIsImEiOiJja2UzbXhrY2IwZGl5MzBwb3BzZWE3NDZ5In0.9qw8ieM2WSWal7uqmBU7mg';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Animal> animals = [];

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((_) async {
      Future<void>.delayed(Duration(seconds: 1), () async {
        await loadData();
      });
    });
  }

  Future<void> loadData() async {
    Service service = Service();
    animals = await service.loadAnimals();
    setState(() {});

    Future<void>.delayed(Duration(seconds: 1), () {
      //_mapController.move(LatLng(animals[0].lat, animals[0].lng), 18);
    });
  }

  MapController _mapController = MapController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        child: Icon(Icons.camera),
      ),
      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController,
            options: _mapOptions,
            layers: <LayerOptions>[_tileLayerOptions, _animalLayerOptions()],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 64.0, 25.0, 0),
            child: Align(
              alignment: Alignment.topRight,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ExploreView()),
                      );
                    },
                    child: Image.asset("images/binoculars.png"),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(15),
                      primary: Color(0xffF5F4EF),
                      minimumSize: Size(48.0, 48.0),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => FilterView()),
                      );
                    },
                    child: Image.asset("images/filter.png"),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(15),
                      primary: Color(0xffF5F4EF),
                      minimumSize: Size(48.0, 48.0),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CameraView()),
                      );
                    },
                    child: Image.asset("images/camera.png"),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(15),
                      primary: Color(0xffF5F4EF),
                      minimumSize: Size(48.0, 48.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Returns configuration of map tiles
  TileLayerOptions get _tileLayerOptions {
    return TileLayerOptions(
      urlTemplate: mapboxUrl,
      backgroundColor: mainColor,
      tileProvider: const CachedNetworkTileProvider(),
    );
  }

  LatLng center = LatLng(1.347218, 103.840751);

  MapOptions get _mapOptions {
    return MapOptions(
      center: center,
      interactive: true,
      onTap: (LatLng){
        animals.forEach((element) {
          element.showThumbnail = false;
        });
      },
      onPositionChanged: (MapPosition pos, bool gesture) {},
    );
  }

  List<Marker> _markers() {
    if (animals.isEmpty)
      return [];
    else
      return animals
          .map((e) => createMarker(e, () {
                setState(() {
                  int index = animals.indexOf(e);
                  animals[index].onExploreTap = () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ExploreView()),
                    );
                  };
                  animals.forEach((element) {
                    if (element == e) {
                      element.showThumbnail = !animals[index].showThumbnail;
                    } else {
                      element.showThumbnail = false;
                    }
                  });
                });
              }))
          .toList();
  }

  Marker createMarker(Animal animal, VoidCallback ontap) {
    return Marker(
      width: 350,
      height: 220,
      point: LatLng(animal.lat, animal.lng),
      anchorPos: AnchorPos.align(AnchorAlign.center),
      builder: (BuildContext ctx) => GestureDetector(
        onTap: ontap,
        child: AnimalMarker(
          animal: animal,
        ),
      ),
    );
  }

  /// Return marker layer configuration for taxi marker
  MarkerLayerOptions _animalLayerOptions() {
    return MarkerLayerOptions(markers: _markers());
  }
}
