import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'animal.dart';


class AnimalMarker extends StatelessWidget {

  final Animal animal;
  const AnimalMarker({Key key, this.animal}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 26,
            height: 26,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF37637),
                border: Border.all(color: Color(0xFFFECC6B3), width: 3),
            ),
          ),
        ),
        if (animal.showThumbnail) Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 180,
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0)),
              color: Colors.white,
            ),
            child: child,
          ),

        ),
      ],
    );
  }

  Widget get child {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 4),
          child: Image(image: AssetImage('avatars.png'))

          /*Row(
           children: [
             CircleAvatar(
               backgroundColor: Colors.deepOrangeAccent,
               child: ClipOval(
                 child: CachedNetworkImage(
                   imageUrl: "",
                   fit: BoxFit.cover,
                   width: 20,
                   height: 20,
                 ),
               ),
             ),
           ],
          ),*/
        ),
        SizedBox(height: 4,),
        GestureDetector(
          onTap: animal.onExploreTap,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0)),
                  color: Colors.green,
                ),
              child: Text(
                'Explore',
                style: TextStyle(color: Colors.white, fontSize: 14), textAlign: TextAlign.center,
              )
            ),
          ),
        )
      ],
    );
  }
}
