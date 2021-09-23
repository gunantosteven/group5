import 'dart:convert';

import 'package:flutter/services.dart';

import 'animal.dart';

class Service {

  Future<List<Animal>> loadAnimals() async {
    List<Animal> animals = [];

    String data = await rootBundle.loadString('assets/data.json');
    List<dynamic> payload = jsonDecode(data);
    for (dynamic json in payload) {
      Map<String, dynamic> item = json as Map<String, dynamic>;
      String species = item['Species'] as String;
      String description = item['Description'] as String;
      String location = item['Location'] as String;
      String image = item['Photo'] as String;
      String coord = item['Coordinates'] as String;

      double lat = 0;
      double lng = 0;
      if (coord.isNotEmpty) {
        List<String> loc = coord.split(", ");
        lat = double.parse(loc[0]);
        lng = double.parse(loc[1]);
      }

      Animal animal = Animal(
          name: "",
          species: species,
          description: description,
          image: image,
          lat: lat,
          lng: lng);
      animals.add(animal);
    }
    return animals;
    //print('payload: ${animals}');

  }

}