import 'package:flutter/material.dart';

class Summary2View extends StatefulWidget {
  const Summary2View({Key key}) : super(key: key);

  @override
  _Summary2ViewState createState() => _Summary2ViewState();
}

class _Summary2ViewState extends State<Summary2View> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).popUntil((route) => route.isFirst);
      },
      child: Image.asset(
        "images/Summary2.jpg",
        fit: BoxFit.fill,
      ),
    );
  }
}
