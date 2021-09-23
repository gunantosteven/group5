import 'package:flutter/material.dart';
import 'package:group5/wireframe/summary2_view.dart';

class Summary1View extends StatefulWidget {
  const Summary1View({Key key}) : super(key: key);

  @override
  _Summary1ViewState createState() => _Summary1ViewState();
}

class _Summary1ViewState extends State<Summary1View> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Summary2View()),
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
                "images/Summary1.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
