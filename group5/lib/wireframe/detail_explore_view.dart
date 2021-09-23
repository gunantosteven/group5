import 'package:flutter/material.dart';
import 'package:group5/wireframe/map_view.dart';

class DetailExploreView extends StatefulWidget {
  const DetailExploreView({Key key}) : super(key: key);

  @override
  _DetailExploreViewState createState() => _DetailExploreViewState();
}

class _DetailExploreViewState extends State<DetailExploreView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).popUntil((route) => route.isFirst);
      },
      child: Container(
        color: Color(0xffF2EEE5),
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical, // <-- Like so
          children: <Widget>[
            Positioned.fill(
              child: Image.asset(
                "images/explore_detail.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
