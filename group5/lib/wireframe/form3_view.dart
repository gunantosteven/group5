import 'package:flutter/material.dart';
import 'package:group5/wireframe/form4_view.dart';

class Form3View extends StatefulWidget {
  const Form3View({Key key}) : super(key: key);

  @override
  _Form3ViewState createState() => _Form3ViewState();
}

class _Form3ViewState extends State<Form3View> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Form4View()),
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
                "images/Form3.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
