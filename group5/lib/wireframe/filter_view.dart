import 'package:flutter/material.dart';
import 'package:group5/wireframe/detail_explore_view.dart';

class FilterView extends StatefulWidget {
  const FilterView({Key key}) : super(key: key);

  @override
  _FilterViewState createState() => _FilterViewState();
}

class _FilterViewState extends State<FilterView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        color: Color(0xffF2EEE5),
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical, // <-- Like so
          children: <Widget>[
            Positioned.fill(
              child: Image.asset(
                "images/Filter.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
