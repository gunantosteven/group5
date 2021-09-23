import 'package:flutter/material.dart';
import 'package:group5/wireframe/form2_view.dart';

class Form1View extends StatefulWidget {
  const Form1View({Key key}) : super(key: key);

  @override
  _Form1ViewState createState() => _Form1ViewState();
}

class _Form1ViewState extends State<Form1View> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Form2View()),
        );
      },
      child: Image.asset(
        "images/Form1.jpg",
        fit: BoxFit.fill,
      ),
    );
  }
}
