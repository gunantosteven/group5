

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AddAnimalPage extends StatefulWidget {
  const AddAnimalPage({Key key}) : super(key: key);

  @override
  _AddAnimalPageState createState() => _AddAnimalPageState();
}

class _AddAnimalPageState extends State<AddAnimalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 45,
              backgroundColor: Colors.deepOrangeAccent,
              child: ClipOval(
                child: CachedNetworkImage(
                  imageUrl: "",
                  fit: BoxFit.cover,
                  width: 300,
                  height: 300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Nice shot!\nWhat have your spotted?'
                  ,style: TextStyle(color: Colors.white, fontSize: 30), textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: 100.0,
              height: 150.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage('Path to your image')),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                color: Colors.redAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
