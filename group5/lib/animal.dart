
import 'package:flutter/cupertino.dart';

class Animal {
  final String name;
  final String species;
  final String description;
  final double lat;
  final double lng;
  final String image;

  bool showThumbnail = false;
  VoidCallback onTap;
  VoidCallback onExploreTap;

  Animal({this.name, this.species, this.description, this.lat, this.lng, this.image});
}