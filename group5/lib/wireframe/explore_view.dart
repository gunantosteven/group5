import 'package:flutter/material.dart';
import 'package:group5/wireframe/detail_explore_view.dart';

class ExploreView extends StatefulWidget {
  const ExploreView({Key key}) : super(key: key);

  @override
  _ExploreViewState createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => DetailExploreView()),
        );
      },
      child: Image.asset(
        "images/explore.jpg",
        fit: BoxFit.fill,
      ),
    );
  }
}
