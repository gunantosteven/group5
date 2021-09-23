import 'package:flutter/material.dart';

class FilterAnimal extends StatefulWidget {
  const FilterAnimal({Key key}) : super(key: key);

  @override
  _FilterAnimalState createState() => _FilterAnimalState();
}

class _FilterAnimalState extends State<FilterAnimal> {
  List<String> species = <String>["River Otters"];
  String selectedSpecies = "River Otters";

  List<String> times = <String>["6-12am", "1-6pm", "6-12pm"];
  String selectedTime = "6-12am";

  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Filter"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        tooltip: 'Increment',
        child: Icon(Icons.check),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "SPECIES",
              style: TextStyle(color: Colors.black, fontSize: 18.0),
            ),
            DropdownButton<String>(
              items: species.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              value: selectedSpecies,
              hint: Text("SELECT SPECIES"),
              isExpanded: true,
              onChanged: (selected) {
                setState(() {
                  selectedSpecies = selected;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "LOCATION",
              style: TextStyle(color: Colors.black, fontSize: 18.0),
            ),
            Slider(
              value: _currentSliderValue,
              min: 0,
              max: 100,
              divisions: 5,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
            Center(
              child: Text(
                "$_currentSliderValue km from current location",
                style: TextStyle(color: Colors.black, fontSize: 18.0),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "TIME",
              style: TextStyle(color: Colors.black, fontSize: 18.0),
            ),
            DropdownButton<String>(
              items: times.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              value: selectedTime,
              hint: Text("SELECT TIME"),
              isExpanded: true,
              onChanged: (selected) {
                setState(() {
                  selectedTime = selected;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
