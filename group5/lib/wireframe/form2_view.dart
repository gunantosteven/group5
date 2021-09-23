import 'package:flutter/material.dart';
import 'package:group5/wireframe/form3_view.dart';

class Form2View extends StatefulWidget {
  const Form2View({Key key}) : super(key: key);

  @override
  _Form2ViewState createState() => _Form2ViewState();
}

class _Form2ViewState extends State<Form2View> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Form3View()),
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
                "images/Form2.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
