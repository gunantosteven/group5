import 'package:flutter/material.dart';

class ListAnimal extends StatefulWidget {
  ListAnimal({Key key}) : super(key: key);

  @override
  _ListAnimalState createState() => _ListAnimalState();
}

class _ListAnimalState extends State<ListAnimal> {
  List a = [
    "https://ca-times.brightspotcdn.com/dims4/default/35ea1cd/2147483647/strip/true/crop/4465x2976+0+0/resize/840x560!/format/webp/quality/90/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F28%2Ffc%2F265139a5450da12db83ae1f3267b%2Fgettyimages-1126526494.jpg",
    "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/02/01/22/02/mountain-landscape-2031539_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/09/14/18/04/dandelion-445228_960_720.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Nearby Dugongs - Pulau Tekong"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext ctx, int index) {
          return Padding(
            padding: EdgeInsets.all(10),
            child: Card(
              shape: Border.all(
                width: 5,
              ),
              elevation: 20,
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.network(a[index]),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.navigation_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          Text(
                            "100k",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "23 Sept 2021, 08:00",
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "River Otters",
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Family of river otters",
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: a.length,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
