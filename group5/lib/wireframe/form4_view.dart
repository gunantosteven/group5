import 'package:flutter/material.dart';
import 'package:group5/wireframe/summary1_view.dart';

class Form4View extends StatefulWidget {
  const Form4View({Key key}) : super(key: key);

  @override
  _Form4ViewState createState() => _Form4ViewState();
}

class _Form4ViewState extends State<Form4View> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Summary1View()),
        );
      },
      child: Container(
        color: Color(0xffF2EEE5),
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical, // <-- Like so
          children: <Widget>[
            Positioned.fill(
              child: Image.asset(
                "images/Form4.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
